cask "115" do
  version "2.0.8.5"
  sha256 "27348c4d4c012586ee2c295d912680b42a855fadb22b1a23fd4585e0e5753b16"

  url "https://down.115.com/client/115pc/mac/115pc_#{version}.dmg"
  name "115"
  name "115桌面版"
  desc "Client for the 115 cloud storage service"
  homepage "https://pc.115.com/index.html#mac"

  livecheck do
    url "https://appversion.115.com/1/web/1.0/api/chrome"
    strategy :json do |json|
      json["data"]["mac_115"]["version_code"]
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "115桌面版.app"

  uninstall quit: "org.115pc.115Desktop"

  zap trash: [
    "~/Library/Application Support/115",
    "~/Library/Application Support/115DocViewer",
    "~/Library/Application Support/115Player",
    "~/Library/Saved Application State/org.115pc.115Desktop.savedState",
    "~/Library/Saved Application State/org.115pc.115DocViewer.savedState",
    "~/Library/Saved Application State/org.115pc.115Music.savedState",
    "~/Library/Saved Application State/org.115pc.115Photo.savedState",
    "~/Library/Saved Application State/org.115pc.115Player.savedState",
  ]
end
