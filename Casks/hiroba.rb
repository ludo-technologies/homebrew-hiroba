cask "hiroba" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.38"
  sha256 arm:   "c016a945ccd84ed7a1f61ebd2c4fa76a5f5cf6ae8b0105c6078a2c515bc2b88a",
         intel: "69b60de11052d8978764d4956b8d0b26cace5df78cd28d4f591f245391a16540"

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
