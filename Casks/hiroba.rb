cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.7"
  sha256 arm:   "d299babb316a444b3c51bb50215211fedee4ce62891160734fe7c6eade74fe61",
         intel: "f3450c149c540bffd65609928493b8254ee843ff20456b250ee73d0e31a8c0db"

  url "https://github.com/ludo-technologies/hiroba/releases/download/v#{version}/Hiroba_#{version}_#{arch}.dmg"
  name "Hiroba"
  desc "Always-on presence app for remote teams"
  homepage "https://hirobaoffice.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Hiroba.app"

  zap trash: [
    "~/Library/Application Support/org.hiroba.app",
    "~/Library/Caches/org.hiroba.app",
    "~/Library/Preferences/org.hiroba.app.plist",
    "~/Library/Saved Application State/org.hiroba.app.savedState",
    "~/Library/WebKit/org.hiroba.app",
  ]
end
