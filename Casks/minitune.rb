cask "minitune" do
  version "1.0.9,20260913-001129"
  sha256 "60fb4029619a4656729be1c2026c26c0a831d53ec8bc78665fa26b17a5a46272"

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
