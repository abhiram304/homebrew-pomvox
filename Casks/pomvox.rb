cask "pomvox" do
  version "0.2.0"
  sha256 "d3d29afe60404ecc48acd69605ff523e71f8af02f9528527e6bf1ef16f0b2ab9"

  url "https://github.com/abhiram304/pomvox/releases/download/v#{version}/Pomvox.dmg"
  name "Pomvox"
  desc "On-device voice dictation for Apple Silicon Macs"
  homepage "https://github.com/abhiram304/pomvox"

  auto_updates true

  livecheck do
    url "https://raw.githubusercontent.com/abhiram304/pomvox/main/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Pomvox.app"

  zap trash: [
    "~/.pomvox",
    "~/Library/Caches/app.pomvox.hub",
    "~/Library/HTTPStorages/app.pomvox.hub",
    "~/Library/Preferences/app.pomvox.hub.plist",
  ]
end
