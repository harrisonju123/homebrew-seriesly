cask "seriesly" do
  version "0.19.14"
  sha256 "afd7cb20b2ee41a7a5265a2518b5c77188e1cbe5ae804e963024b99eda7543c4"

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
