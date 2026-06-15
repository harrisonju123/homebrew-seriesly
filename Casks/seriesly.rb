cask "seriesly" do
  version "0.19.7"
  sha256 "edfb5daa4b9520fa91ee8da44ebb1fbc5e6a2cf36604f92fb11775c4f3cb7a3e"

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
