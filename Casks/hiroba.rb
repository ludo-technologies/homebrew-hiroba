cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.34"
  sha256 arm:   "98e691a64ce41552d802bd62e85db0eb41363a1acb642af043860b805c969a2c",
         intel: "36de4ebdfc7eae9869bc5eaf9fab7400176aaa70bbb29edb4436c094ea854b47"

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
