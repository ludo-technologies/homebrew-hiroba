cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.8"
  sha256 arm:   "d8e53f9bc7b86479b6da677fb91dafd955fed8dbd62e1dae0a571b1e14508b55",
         intel: "b9f631d05e0f651af2a1e7a553bfd9ae39a44935a850f470a7f016e31851fcb4"

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
