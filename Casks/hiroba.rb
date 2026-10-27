cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "a8d50fa9547a5b6c022c6e1e350dd1ef730f52918f3d7ccd4e2ca4e264da76c2",
         intel: "5d2b5c513eed3ce4a7acdc156ab38fdc65abbd4bf77265bc89e2cc7eb77d905a"

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
