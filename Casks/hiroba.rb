cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.41"
  sha256 arm:   "a38c94ab0c32daa80e0d29cf6e704277fdd423605dedd28a5e49ba779103a276",
         intel: "47d78ad0f971fbc85ee344286b0c647d409bd39d123c442c799c3cf693632e1b"

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
