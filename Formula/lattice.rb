# typed: false
# frozen_string_literal: true

class Lattice < Formula
  desc "A self-hosted remote development platform"
  homepage "https://latticeruntime.com"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v0.4.1/lattice_0.4.1_darwin_arm64.zip"
      sha256 "34d83669c2c683e00f0999e27d996d13db4aeccf7be6826a17eb6f2b39864b12"
    end
    if Hardware::CPU.intel?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v0.4.1/lattice_0.4.1_darwin_amd64.zip"
      sha256 "b1700352e4b0a7ecc6a06adf84b676eb8d4eb75e7d0a100a0e3135eacf6f4128"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v0.4.1/lattice_0.4.1_linux_arm64.tar.gz"
      sha256 "91037186aed4a4eb5dbd426862553f643de006dafd4928049a9fbca450633f51"
    end
    if Hardware::CPU.intel?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v0.4.1/lattice_0.4.1_linux_amd64.tar.gz"
      sha256 "192227e2e15b8c8df04bc368b5dd0e16ebdc963bc8cf224ea444de02a86ec2f0"
    end
  end

  def install
    bin.install "lattice"
  end

  test do
    system "#{bin}/lattice", "version"
  end
end
