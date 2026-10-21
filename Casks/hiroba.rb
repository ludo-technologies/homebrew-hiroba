cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "22696ba39e7a35fa84e096193cc03f4b2f8b6ec2e65899f2ae793080841232f0",
         intel: "4e8669cd4e27c2fa1efcc7111b30e4fc209b5a7396c365c735225b22d6936bec"

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
