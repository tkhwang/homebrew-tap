cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.12.0"
  sha256 arm:   "8de5b22fa7441bb3c6ce1962ca5c3bba0c590ff99d0a1c06e3e1e29c527e9dd1",
         intel: "e0906f536a8cbba29e0b94fc554a15c5bf01cb17c9622b56aad4665cb662475a"

  url "https://github.com/tkhwang/tasteful-intent/releases/download/v#{version}/TastefulIntent_#{version}_#{arch}.dmg"
  name "Tasteful Intent"
  desc "Markdown memo editor for intent and taste"
  homepage "https://github.com/tkhwang/tasteful-intent"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TastefulIntent.app"

  uninstall quit: "app.tkbetter.intentmemo"

end
