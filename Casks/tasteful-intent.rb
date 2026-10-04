cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.13.0"
  sha256 arm:   "3c5b4974dedf38dcca6f25de3c9f9cb2d80a6f42f6a980c349fb9ab2e998d88e",
         intel: "1bdc2b0e9ffb1999524a50c34198d3ee2ded58a6402061b1e8d054cd6c452a7e"

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
