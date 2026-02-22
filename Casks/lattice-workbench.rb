cask "lattice-workbench" do
  version "0.1.1"

  on_arm do
    url "https://github.com/latticeHQ/latticeWorkbench/releases/download/v#{version}/Lattice-#{version}-arm64.zip"
    sha256 "3c49a54374e2c1fa0c570220f19177839802311d59fbf9651b11dd2317f13926"
  end

  on_intel do
    url "https://github.com/latticeHQ/latticeWorkbench/releases/download/v#{version}/Lattice-#{version}-x64.zip"
    sha256 "43f302cb944c7619d7a6081689d50c01d0b2d902b8fc2539e1ffa1f85ddd4c49"
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
