cask "lattice-workbench" do
  version "0.15.0"

  on_arm do
    url "https://github.com/latticeHQ/latticeWorkbench/releases/download/v#{version}/Lattice-#{version}-arm64.zip"
    sha256 "eab92c3f52047aaad12628f5f38e2761a00495cb006eb805a219049efb645a5d"
  end

  on_intel do
    url "https://github.com/latticeHQ/latticeWorkbench/releases/download/v#{version}/Lattice-#{version}-x64.zip"
    sha256 "c8628f3d8c9d4445af9bf6f69e4f2f4933311e739a96cd9d0a5f54bb68e2eddb"
  end

  name "Lattice Workbench"
  desc "Agent IDE & operations console for the Lattice ecosystem"
  homepage "https://latticeruntime.com"

  app "Lattice.app"

  zap trash: [
    "~/Library/Application Support/Lattice",
    "~/Library/Preferences/com.latticeruntime.workbench.plist",
    "~/Library/Saved Application State/com.latticeruntime.workbench.savedState",
  ]
end
