# typed: false
# frozen_string_literal: true

class Wirtual < Formula
  desc "A self-hosted remote development platform"
  homepage "https://wirtual.dev"
  version "5.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v5.2.0/wirtual_5.2.0_darwin_arm64.zip"
      sha256 "1dd8dbeb6b75d10d85a9fb00359539e940bd8d381747bf0f070166db4c9f98f7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v5.2.0/wirtual_5.2.0_darwin_amd64.zip"
      sha256 "ae48259ed5c555106c4684a1686ac19a0910f5616b236238f3bd4749853eca59"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v5.2.0/wirtual_5.2.0_linux_arm64.tar.gz"
      sha256 "758b34a636c9a7b5ffaf7fd0ed9d15a2a04f99494575d5d40c851339c888e165"
    end
    if Hardware::CPU.intel?
      url "https://github.com/latticeHQ/lattice-runtime/releases/download/v5.2.0/wirtual_5.2.0_linux_amd64.tar.gz"
      sha256 "487c7cd2cf6bf0573c73f5c9bc97039f109aed77efa3d9cd94247f2903e797fc"
    end
  end

  def install
    bin.install "wirtual"
  end

  test do
    system "#{bin}/wirtual", "version"
  end
end
