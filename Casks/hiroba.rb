cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "31fc48b588b231fe2eb5fefe9cec6f4ea7bd703cb2d46aabfe598fbc03a2bda0",
         intel: "7b476b97ee7a119d04fd458f86a51c532342d4501fdf11338e4625232739da19"

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
