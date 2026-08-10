# Homebrew cask for CoreSense (stable channel). `version` + `sha256` are
# auto-managed on each STABLE release by the CoreSense release automation
# (see andyshinn/coresense); edit those two lines by hand only as a fallback.
# Install with:
#   brew tap andyshinn/coresense
#   brew install --cask coresense
cask "coresense" do
  version "0.0.13"
  sha256 "1b7ea09bc14ebcb0541f5f490e6d50b584a941a4bc1d41f2a2ec503be84878e1"

  url "https://github.com/andyshinn/coresense/releases/download/v#{version}/CoreSense-#{version}-universal.dmg"
  name "CoreSense"
  desc "Experimental desktop MeshCore client"
  homepage "https://github.com/andyshinn/coresense"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "coresense@dev"
  depends_on macos: :big_sur

  app "CoreSense.app"

  zap trash: [
    "~/Library/Application Support/CoreSense",
    "~/Library/Caches/com.electron.coresense",
    "~/Library/Caches/com.electron.coresense.ShipIt",
    "~/Library/Preferences/com.electron.coresense.plist",
    "~/Library/Saved Application State/com.electron.coresense.savedState",
  ]
end
