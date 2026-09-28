cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.37"
  sha256 arm:   "a3459c8a7604586575724ad75c6333357abc3e16311a063272ec64db1576374e",
         intel: "192b14b2b43956886249515d20ebe92a9c4591efcad195763cf525b40d70af89"

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
