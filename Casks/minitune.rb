cask "minitune" do
  version "1.0.13,20260916-183218"
  sha256 "12ae6f8d3ed74ba31f2504416e9be0cb14891eb3eca51c83a08152d73536e07d"

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
