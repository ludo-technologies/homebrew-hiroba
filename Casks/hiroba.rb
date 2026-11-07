cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.4"
  sha256 arm:   "40a3bd6376c394e41347bd29d1147153808d914180f71f2618d205204a64d4aa",
         intel: "c295d143e7cf84249fe6a9a97eb540de1463c292179b7bd5cbc33726f0bc74b7"

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
