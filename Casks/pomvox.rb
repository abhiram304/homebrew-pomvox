cask "pomvox" do
  version "0.1.0"
  sha256 "ecd04f450b50ed13bb385f6e2d48eb2575f3b6cb9122b3401185ad8f520e1022"

  url "https://github.com/abhiram304/pomvox/releases/download/v#{version}/Pomvox.dmg",
      verified: "github.com/abhiram304/pomvox/"
  name "Pomvox"
  desc "On-device voice dictation for Apple Silicon Macs"
  homepage "https://github.com/abhiram304/pomvox"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Pomvox.app"

  zap trash: [
    "~/.pomvox",
    "~/Library/Caches/app.pomvox.hub",
    "~/Library/HTTPStorages/app.pomvox.hub",
    "~/Library/Preferences/app.pomvox.hub.plist",
  ]
end
