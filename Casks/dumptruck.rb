cask "dumptruck" do
  version "0.5.12-beta"
  sha256 "fc47c50d43a9824ba1adf98acf6ba334becded380da0a69332475aa8db7a3db0"

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
