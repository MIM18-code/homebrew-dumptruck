cask "dumptruck" do
  version "0.5.22-beta"
  sha256 "910cdb45dc926ecf15768d43b31c4bae1a5724c81b748291be58c5822d8ea1b9"

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
