# Hub Nexus's Homebrew tap

Write, the free Markdown editor for the desktop that publishes to Hub Nexus:

    brew tap hubnx/tap && brew trust hubnx/tap && brew install --cask hubnx/tap/write

Homebrew 7 loads nothing from a tap you have not trusted, so the middle step
is part of the command. Each release of Write updates `Casks/write.rb`
(version and checksum) from the release's files; the app updates itself after
that, so Homebrew only installs. About Write: https://www.hubnx.com/apps
