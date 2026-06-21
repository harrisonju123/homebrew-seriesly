cask "seriesly" do
  version "0.19.12"
  sha256 "39ca5225b3e7810c51be97e6d30680dcafa9493b94b0ab4829d17a1f516ac270"

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
