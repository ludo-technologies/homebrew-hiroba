cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.43"
  sha256 arm:   "5158d831f95a69e489e314f0396f7c6160c157504bac58d9ebd9b953a12a5b53",
         intel: "bc3f58c4a28dafc64178e2417c9665755f329822987d5a09bcf69fa419da758f"

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
