#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -ne 5 ]; then
  echo "Usage: $0 <version> <darwin_arm_sha> <darwin_intel_sha> <linux_arm_sha> <linux_amd_sha>"
  exit 1
fi

VERSION=$1
DARWIN_ARM_SHA=$2
DARWIN_INTEL_SHA=$3
LINUX_ARM_SHA=$4
LINUX_AMD_SHA=$5

# Update Formula/lattice.rb
cat > Formula/lattice.rb << EOF
# typed: false
# frozen_string_literal: true

# Lattice — the complete AI agent ecosystem.
# One install gives you the runtime CLI + Workbench (agent IDE & operations console).
# Usage: brew install latticehq/lattice/lattice
class Lattice < Formula
  desc "The AI agent ecosystem — runtime, workbench, inference, all in one install"
  homepage "https://latticeruntime.com"
  version "${VERSION}"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latticeHQ/lattice/releases/download/v${VERSION}/lattice_${VERSION}_darwin_arm64.zip"
      sha256 "${DARWIN_ARM_SHA}"
    end
    if Hardware::CPU.intel?
      url "https://github.com/latticeHQ/lattice/releases/download/v${VERSION}/lattice_${VERSION}_darwin_amd64.zip"
      sha256 "${DARWIN_INTEL_SHA}"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/latticeHQ/lattice/releases/download/v${VERSION}/lattice_${VERSION}_linux_arm64.tar.gz"
      sha256 "${LINUX_ARM_SHA}"
    end
    if Hardware::CPU.intel?
      url "https://github.com/latticeHQ/lattice/releases/download/v${VERSION}/lattice_${VERSION}_linux_amd64.tar.gz"
      sha256 "${LINUX_AMD_SHA}"
    end
  end

  depends_on "node@22"

  def install
    bin.install "lattice"

    system "npm", "install", "--global", "--prefix", libexec, "lattice-workbench@0.15.0"
    (bin/"lattice-workbench").write <<~EOS
      #!/bin/bash
      exec "#{libexec}/bin/lattice-workbench" "\\\$@"
    EOS
    chmod 0755, bin/"lattice-workbench"
  end

  def caveats
    <<~EOS
      Lattice ecosystem installed!

        lattice              — Runtime CLI (identity, authorization, audit, deployment)
        lattice-workbench    — Agent IDE & operations console

      Get started:
        lattice version                    # Verify installation
        lattice deploy my-agent            # Deploy an agent
        lattice-workbench server --open    # Open Workbench in browser

      Docs: https://docs.latticeruntime.com
    EOS
  end

  test do
    system "#{bin}/lattice", "version"
  end
end
EOF

echo "Formula updated for version ${VERSION}"
