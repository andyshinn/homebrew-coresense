# Homebrew cask for CoreSense (development / prerelease channel). `version` +
# `sha256` are auto-managed on each PRERELEASE by the CoreSense release
# automation (see andyshinn/coresense); edit those two lines by hand only as a
# fallback. Install with:
#   brew tap andyshinn/coresense
#   brew install --cask coresense@dev
cask "coresense@dev" do
  version "0.0.14-dev.5"
  sha256 "c46f5595f8f98ac4b0911a26ea6764a15aee6761e7590f5866797d54abf9575b"

  url "https://github.com/andyshinn/coresense/releases/download/v#{version}/CoreSense-#{version}-universal.dmg"
  name "CoreSense"
  desc "Experimental desktop MeshCore client (development builds)"
  homepage "https://github.com/andyshinn/coresense"

  livecheck do
    url :url
    strategy :github_releases
  end

  conflicts_with cask: "coresense"
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
