cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.3"
  sha256 arm:   "3728046029efabbbfdf63a519e1adf9f92b235996ae9a8cc4eee5a2a018ab222",
         intel: "744b226141f3323f031bcbdc44b2d8776066611473900b10bcf409c6c0e8c6ee"

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
