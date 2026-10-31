cask "minitune" do
  version "1.0.34,20261031-123400"
  sha256 "60f5dc2be1bbe1c9250f7667462c587e33b26b04c9bc7780e4bdfd16866c9758"

  url "https://downloads.minitune.app/releases/MiniTune-#{version.csv.second}.dmg"
  name "MiniTune"
  desc "Notch and menu bar player for YouTube, Apple Music, Spotify and your own files"
  homepage "https://minitune.app/"

  livecheck do
    url "https://downloads.minitune.app/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.url[/MiniTune-(\d{8}-\d{6})\.dmg/i, 1]}"
    end
  end

  depends_on macos: :tahoe

  app "MiniTune.app"

  zap trash: [
    "~/Library/Application Scripts/com.dineshmadhavan.minitune",
    "~/Library/Application Scripts/com.dineshmadhavan.minitune.safari-extension",
    "~/Library/Application Support/MiniTune",
    "~/Library/Caches/com.dineshmadhavan.minitune",
    "~/Library/Caches/MiniTune",
    "~/Library/Containers/com.dineshmadhavan.minitune",
    "~/Library/Containers/com.dineshmadhavan.minitune.safari-extension",
    "~/Library/Group Containers/group.com.dineshmadhavan.minitune",
    "~/Library/HTTPStorages/com.dineshmadhavan.minitune",
    "~/Library/HTTPStorages/com.dineshmadhavan.minitune.binarycookies",
    "~/Library/Logs/MiniTune",
    "~/Library/Logs/MiniTune-*.log",
    "~/Library/Preferences/com.dineshmadhavan.minitune.plist",
  ]
end
