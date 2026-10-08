cask "dumptruck" do
  version "0.5.6-beta"
  sha256 "64b9d0af0f8a3f969881068a93a19c18e1ea841a4a3448dd22d3e1c73a4b1a39"

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

  caveats <<~EOS
    ARRIRAW metadata and thumbnails need the ARRI Reference Tool, installed
    separately. Copying and verification do not.
  EOS
end
