# typed: false
# frozen_string_literal: true

# Lattice Runtime CLI — identity, authorization, audit, and deployment for AI agents.
# Usage: brew install latticehq/lattice/lattice
class Lattice < Formula
  desc "Runtime enforcement and identity infrastructure for autonomous AI agents"
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

  def install
    bin.install "lattice"
  end

  def caveats
    <<~EOS
      Lattice Runtime CLI installed!

      Get started:
        lattice version                # Verify installation
        lattice deploy my-agent        # Deploy an agent

      Docs: https://docs.latticeruntime.com
    EOS
  end

  test do
    system "#{bin}/lattice", "version"
  end
end
