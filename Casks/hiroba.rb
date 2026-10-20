cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "d18ab74259cff564db08c518ab710e46d4e3f835570f0e85b77e85b0e1d97d70",
         intel: "9a54311ae3cd71bfaca35ceb9c3be164137111be1ed648391250963a383baada"

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
