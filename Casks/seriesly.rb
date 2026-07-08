cask "seriesly" do
  version "0.22.0"
  sha256 "69ad06fcf7f64d6daa54ae691b10ee1dbfa6a2b3073e3197f8229ca7b3339559"

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
