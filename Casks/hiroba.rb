cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.42"
  sha256 arm:   "4a68ec7efd15bedae53a0c69d668567c936a7f69a9c3418e8d11731192592d50",
         intel: "26153e216a8f6f379554357fda214b4d2ee653c430183bafc659a9ebb86c235b"

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
