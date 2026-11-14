cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.10"
  sha256 arm:   "cad0ec7c0a098991adc3415cc056298cafa89d9cb51820e2d4fa4601255119c7",
         intel: "ef88aa8250aeba5538d26744105e57938e8bc2e7dfb4331f3efc079e47b98533"

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
