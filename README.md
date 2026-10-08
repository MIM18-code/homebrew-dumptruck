# Homebrew tap for Dumptruck

Dumptruck copies camera cards to backup drives, reads every copy back to check it, and writes an HTML and PDF offload report plus ASC MHL manifests. A card shows SAFE TO WIPE only when two separate drives hold verified copies. The app has no erase function.

## Install

```bash
brew tap MIM18-code/dumptruck
brew trust MIM18-code/dumptruck
brew install --cask dumptruck
```

Recent Homebrew refuses casks from third-party taps until you trust the tap once; that is the second line. The app is signed with MindInMotion LLC's Developer ID and notarized by Apple, so it opens on first launch with no extra step.

Apple Silicon and macOS 14 or later. Upgrade with `brew upgrade --cask dumptruck`. Remove with `brew uninstall --cask dumptruck`; add `--zap` to also delete the app's settings and its job history in `~/Library/Application Support/Dumptruck`. Offload reports and manifests on your backup drives are never touched.

## Camera formats

The app reads metadata and thumbnails from R3D and BRAW clips through bundled helpers. It asks you to agree to their terms the first time it opens; copying and verification work either way. ARRIRAW metadata and thumbnails need the ARRI Reference Tool installed separately for now.

## Beta

This is a beta. SAFE TO WIPE means the job met Dumptruck's verification checks at the time; it does not protect against a drive failing later. Keep your usual backup routine alongside it, and read the report before you erase a card.

Source code, releases and issues: [MIM18-code/dumptruck](https://github.com/MIM18-code/dumptruck). Dumptruck is Apache-2.0; the bundled camera components carry their own terms.
