cask "lattice-workbench" do
  version "0.1.0"

  on_arm do
    url "https://github.com/latticeHQ/latticeWorkbench/releases/download/v#{version}/Lattice-#{version}-arm64.zip"
    sha256 "fcd5b67e69ef166136af902b08c70606e3d5ec20bbc03c1280e116c3f8bf465a"
  end

  on_intel do
    url "https://github.com/latticeHQ/latticeWorkbench/releases/download/v#{version}/Lattice-#{version}-x64.zip"
    sha256 "3e630ded7a66caf2e4e136742203c7321af71a8b26e942bfca9a9a7bfebf0ada"
  end

  name "Lattice Workbench"
  desc "Agent IDE & operations console for the Lattice ecosystem"
  homepage "https://latticeruntime.com"

  depends_on formula: "latticehq/lattice/lattice"

  app "Lattice.app"

  # Remove quarantine until app is code-signed and notarized
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Lattice.app"]
  end

  zap trash: [
    "~/Library/Application Support/Lattice",
    "~/Library/Preferences/com.latticeruntime.workbench.plist",
    "~/Library/Saved Application State/com.latticeruntime.workbench.savedState",
  ]
end
