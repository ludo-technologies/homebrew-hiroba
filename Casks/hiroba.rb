cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.32"
  sha256 arm:   "18ea873ccd4f540c537746f586143a7d3316790c2999e5e74f5f1cbf230cf6f9",
         intel: "8536798b44f3e1cf252c6b5e5ee02d1998703f85a524f358b7becb2bbfef059e"

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
