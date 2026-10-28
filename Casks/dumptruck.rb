cask "dumptruck" do
  version "0.5.14-beta"
  sha256 "7817b60683a4f80fb87302214cfbc6d8c8936fd4336ed60f273892ee89b092a8"

  url "https://github.com/MIM18-code/dumptruck/releases/download/v#{version}/Dumptruck-#{version}-arm64.dmg"
  name "Dumptruck"
  desc "Checksum-verified camera media offloader with offload reports and ASC MHL"
  homepage "https://github.com/MIM18-code/dumptruck"

  livecheck do
    skip "Beta builds are GitHub prereleases; bump this cask by hand"
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Dumptruck.app"

  zap trash: [
    "~/Library/Application Support/Dumptruck",
    "~/Library/Preferences/tv.mindinmotion.dumptruck.plist",
  ]
end
