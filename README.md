# homebrew-minitune

Homebrew tap for [MiniTune](https://minitune.app/), the menu bar and notch music player for macOS (YouTube, Apple Music, Spotify, self-hosted servers and your own files).

## Install

```sh
brew tap dinesh-madhavan/minitune
brew install --cask minitune
```

## Upgrade

```sh
brew upgrade --cask minitune
```

Updates also arrive in-app through Sparkle, so either route keeps you current.

## Notes

- MiniTune is a paid app with a 7-day free trial. A licence is a one-time purchase at [minitune.app](https://minitune.app/).
- Requires macOS Tahoe (26) or later.
- The cask version reads `1.0.6,20260911-001526`: the app version, then the timestamp of the immutable DMG it was built from. Homebrew needs that stamp in the download URL so it can verify the checksum.
- The cask installs the same notarised DMG that is published at downloads.minitune.app; the checksum in `Casks/minitune.rb` is verified by Homebrew on every install.
- To remove the app and its data: `brew uninstall --zap --cask minitune`.
