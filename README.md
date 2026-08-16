# homebrew-hiroba

Homebrew tap for [Hiroba](https://github.com/ludo-technologies/hiroba), an
open-source, always-on presence app for remote teams.

```bash
brew tap ludo-technologies/hiroba
brew trust ludo-technologies/hiroba
brew install --cask hiroba
```

Homebrew 6 refuses to load a cask from a third-party tap until you trust it; on
older versions the `brew trust` line is unnecessary.

The cask installs the signed and notarized macOS build (Apple Silicon and Intel)
from the Hiroba GitHub Releases page.

Hiroba updates itself in place, so the cask is mainly the first-install path.
`brew upgrade` leaves it alone (`auto_updates true`); use
`brew upgrade --cask --greedy hiroba` if you want Homebrew to reinstall the
latest build anyway.

## Maintenance

`Casks/hiroba.rb` is updated automatically: the `update-homebrew-tap` job in the
[Hiroba release workflow](https://github.com/ludo-technologies/hiroba/blob/main/.github/workflows/release-client.yml)
rewrites the version and checksums and pushes here on every `v*` tag. Edit the
cask by hand only for changes the release job does not touch (stanzas, zap
paths, description).
