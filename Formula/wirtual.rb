# typed: false
# frozen_string_literal: true

class Wirtual < Formula
  desc "A self-hosted remote development platform"
  homepage "https://wirtual.dev"
  version "5.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v5.2.2/wirtual_5.2.2_darwin_arm64.zip"
      sha256 "6fa75fa0d882615cc1391680a62c22b9d8b9853cbc04ac7c731bae1304e8173b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v5.2.2/wirtual_5.2.2_darwin_amd64.zip"
      sha256 "86816856de9f7f64ae627f4e678af22e4b404949a342fd0614e6db862f50a7ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v5.2.2/wirtual_5.2.2_linux_arm64.tar.gz"
      sha256 "6cbb0e75a1c0c597e37d7b8fd545a365f23d84e08fbd9de71c61b686a5544a2d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v5.2.2/wirtual_5.2.2_linux_amd64.tar.gz"
      sha256 "7063a4b33f024ea077ff84e11a87e32c886caac67eb1c20cd7dc4ec7d425f59e"
    end
  end

  def install
    bin.install "wirtual"
  end

  test do
    system "#{bin}/wirtual", "version"
  end
end
