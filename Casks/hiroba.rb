cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.33"
  sha256 arm:   "0b3ebb52c47af5542b78cef715a9bc3d45c9ce687438fab7a5e11dcb029cf32e",
         intel: "a03d10c791e12fc2feabcfbce69b72ae33f35a37ff6e479b2370fbeb46315000"

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
