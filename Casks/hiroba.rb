cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.6"
  sha256 arm:   "1db746ab1bae4d6048ce0a8c617cc2a82c9e1def97d03d9e2e20c583bb51a0b2",
         intel: "6dd8060ea87f3a3796b331b8bf692d1face6c15df10de0dff9f547c90b0f4865"

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
