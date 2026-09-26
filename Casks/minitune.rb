cask "minitune" do
  version "1.0.24,20260926-224105"
  sha256 "b16c8bbe16e43867bb52859744d6f3915c715b540008e4a43bd339e86a5aa729"

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
