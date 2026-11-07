cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.5"
  sha256 arm:   "be81a878ddab6ef87d61aba67f9f4375f1ff21ad059565f4c19ea3cb05054585",
         intel: "0e1f53d265ab336fa7a4d9fd23bb5cda9aab4228bf0b0c7a93631e093627b010"

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
