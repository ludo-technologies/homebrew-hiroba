cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.31"
  sha256 arm:   "923836976c2cc20d54cf9cd2c7589d9ee8e659e03e5edff9d7c124336a4f7334",
         intel: "3fab866283583845dad9a12d2e4c10a5c3d191ddfdd42ebbe11c393249b6027d"

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
