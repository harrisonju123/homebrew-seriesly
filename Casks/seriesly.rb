cask "seriesly" do
  version "0.19.0"
  sha256 "4122d51b9fb1b4cdb4d745e9af36614d3f0ae62439fdb955a50ac0113d8eb298"

  url "https://github.com/harrisonju123/seriesly-releases/releases/download/v#{version}/Seriesly.dmg"
  name "Seriesly"
  desc "Private, local meeting memory — briefs, open loops, and series history"
  homepage "https://series-ly.com/"

  livecheck do
    url "https://series-ly.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Seriesly.app"

  zap trash: [
    "~/Library/Application Support/Seriesly",
    "~/Library/Caches/com.seriesly.app",
    "~/Library/HTTPStorages/com.seriesly.app",
    "~/Library/Preferences/com.seriesly.app.plist",
    "~/Library/WebKit/com.seriesly.app",
  ]
end
