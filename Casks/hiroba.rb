cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.9"
  sha256 arm:   "f84818f9c85d96ffd55d55d711e50176a58598beac58bb7cb8bc73179c57eb0a",
         intel: "67c56a2812740f3852be54ffb5c1d4703dcea521304c6a6236f8bc0cfd6e0271"

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
