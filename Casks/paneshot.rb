cask "paneshot" do
  version "2.6.1"
  sha256 "b4521c9fd0c658804d3e4f5581cdb444f594b6c8a9422021a0e6bc7e9e11c82f"

  url "https://download.paneshot.com/Paneshot-#{version}.dmg"
  name "Paneshot"
  desc "Menu-bar screenshot tool for fast, private handoff to apps and coding agents"
  homepage "https://paneshot.com/"

  livecheck do
    url "https://download.paneshot.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Paneshot.app"

  zap trash: [
    "~/Library/Application Support/com.paneshot.app",
    "~/Library/Caches/com.paneshot.app",
    "~/Library/Caches/com.paneshot.app.sparkle",
    "~/Library/HTTPStorages/com.paneshot.app",
    "~/Library/Preferences/com.paneshot.app.plist",
    "~/Library/WebKit/com.paneshot.app",
  ]
end
