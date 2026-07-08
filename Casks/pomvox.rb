cask "pomvox" do
  version "0.1.8"
  sha256 "33f5c19b8affc7908e4543ce9106db0db53e0e5ecc449ddb6be62479fa3e2c8d"

  url "https://github.com/abhiram304/pomvox/releases/download/v#{version}/Pomvox.dmg"
  name "Pomvox"
  desc "On-device voice dictation for Apple Silicon Macs"
  homepage "https://github.com/abhiram304/pomvox"

  livecheck do
    url :url
    strategy :github_latest
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
