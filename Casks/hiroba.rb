cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.40"
  sha256 arm:   "3b000e616c7b83dd7224534e3e76f4bd921f174508d7579546e33ed21072108e",
         intel: "690fa0e468e33bd08d583b63bad3e99501b58af172600357b57c8d0fa5883429"

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
