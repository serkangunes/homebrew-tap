# Homebrew tap for Paneshot

[Paneshot](https://paneshot.com/) is a macOS menu-bar screenshot tool for capturing, explaining and handing off screen content. Captures stay on your Mac.

```sh
brew install --cask serkangunes/tap/paneshot
```

Or add the tap first:

```sh
brew tap serkangunes/tap
brew install --cask paneshot
```

The cask installs the signed and notarised `Paneshot.app` from `download.paneshot.com`, the same file as the website download. Paneshot updates itself with Sparkle, so `brew upgrade` is optional. Requires macOS 13 Ventura or newer.

Uninstall, and remove Paneshot's preferences and caches:

```sh
brew uninstall --cask --zap paneshot
```

This tap only carries the cask. Product questions go through [paneshot.com](https://paneshot.com/).
