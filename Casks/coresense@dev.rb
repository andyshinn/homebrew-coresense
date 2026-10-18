# Homebrew cask for CoreSense (development / prerelease channel). `version` +
# `sha256` are auto-managed on each PRERELEASE by the CoreSense release
# automation (see andyshinn/coresense); edit those two lines by hand only as a
# fallback. Install with:
#   brew tap andyshinn/coresense
#   brew install --cask coresense@dev
cask "coresense@dev" do
  version "0.0.14-dev.6"
  sha256 "35a6a5a70da2f87c49fe051a1782ccbf4365e642b728a4051c1db93c8a83802c"

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
