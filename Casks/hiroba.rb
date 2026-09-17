cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.36"
  sha256 arm:   "f230d1621f02b402cd7342f18cd4ac92e5d6cbdf252cade11385cbea1bf90b3a",
         intel: "990c369bf21a9641625ae163f785df918f36d0a325731b26f78eff3d69faa575"

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
