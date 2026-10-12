cask "dumptruck" do
  version "0.5.9-beta"
  sha256 "4856c31077a7e52a292f081f8124b151fc015e7ebf22b72d7ae63a8909677fee"

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
