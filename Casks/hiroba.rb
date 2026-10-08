cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.39"
  sha256 arm:   "d06a4b788ecbd7caf9ec6e1821577657554cc4677a0036ddf68f6d90d5b363c4",
         intel: "1ddaa9331bd7864ed4d035ea00c56831875d3b1aa9dd89b3aab097b4201d2ef2"

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
