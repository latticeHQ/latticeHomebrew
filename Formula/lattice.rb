# typed: false
# frozen_string_literal: true

# Lattice — the complete AI agent ecosystem.
# One install gives you the runtime CLI + Workbench (agent IDE & operations console).
# Usage: brew install latticehq/lattice/lattice
class Lattice < Formula
  desc "The AI agent ecosystem — runtime, workbench, inference, all in one install"
  homepage "https://latticeruntime.com"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latticeHQ/lattice/releases/download/v0.11.2/lattice_0.11.2_darwin_arm64.zip"
      sha256 "1142c6a34a37e0988e3590cae65b830207dc1a37010541d1d7a63f28acb1b317"
    end
    if Hardware::CPU.intel?
      url "https://github.com/latticeHQ/lattice/releases/download/v0.11.2/lattice_0.11.2_darwin_amd64.zip"
      sha256 "236f04622da4b6e02ea72c2f5330c055543a74a3a03342b31d10a6fc48f3a24c"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/latticeHQ/lattice/releases/download/v0.11.2/lattice_0.11.2_linux_arm64.tar.gz"
      sha256 "1d395b55888c41bf31ed28c4fcc8828938bf75360a0df14784132d6f0fbb56f4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/latticeHQ/lattice/releases/download/v0.11.2/lattice_0.11.2_linux_amd64.tar.gz"
      sha256 "c4cb0726df516bda421bef241cf549a74c659cb5e743122588ace1146e929d11"
    end
  end

  depends_on "node@22"

  def install
    # Runtime CLI
    bin.install "lattice"

    # Workbench (agent IDE & operations console) via npm
    system "npm", "install", "--global", "--prefix", libexec, "lattice-workbench@0.15.0"
    (bin/"lattice-workbench").write <<~EOS
      #!/bin/bash
      exec "#{libexec}/bin/lattice-workbench" "$@"
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
