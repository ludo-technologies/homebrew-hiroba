cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "4f108cd24ac0215bc8573300f15431b8a8e94b255dd61a6ae8503a54149ceda1",
         intel: "7fc176f7c5696a68148d6cf0bb53108e8104de0c441fad2dc9b7a1ec47fd3394"

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
