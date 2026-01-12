# typed: false
# frozen_string_literal: true

class Wirtual < Formula
  desc "A self-hosted remote development platform"
  homepage "https://wirtual.dev"
  version "5.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v5.2.1/wirtual_5.2.1_darwin_arm64.zip"
      sha256 "1243c56a9648aca404225f04aa291c0f9469d7ff554407cacac44000322e5f4c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v5.2.1/wirtual_5.2.1_darwin_amd64.zip"
      sha256 "765c31b02aa7d72ce2048a6edf269d73dfcf7fb80632dba7e1dc6b67bb2970f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v5.2.1/wirtual_5.2.1_linux_arm64.tar.gz"
      sha256 "3c562346356d221ad93a16f60e9e3f050fba9ce43d98b5b83dc74c0f64776e33"
    end
    if Hardware::CPU.intel?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v5.2.1/wirtual_5.2.1_linux_amd64.tar.gz"
      sha256 "5d1d77233c2c2a67223313eb83a38d08a40a7064861014abe6dece6c32a1bce6"
    end
  end

  def install
    bin.install "wirtual"
  end

  test do
    system "#{bin}/wirtual", "version"
  end
end
