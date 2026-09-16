cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.35"
  sha256 arm:   "79987efa1079a729da524dd099051c6397d60b72a0192e23b34cbf5f483fd06f",
         intel: "57e816518114c6bdc94c8f921c6a113d533a0ca2cc0868b7e1c62194fe2582de"

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
