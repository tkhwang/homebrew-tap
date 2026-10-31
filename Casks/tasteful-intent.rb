cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.15.1"
  sha256 arm:   "46a990c9cfa5875a226495c0966018cc504f484fb552d6b5844a8b3e7b64ee4b",
         intel: "37a6685d8a3c819e674cb024403695088c3cae78ce6de197b2b89d2a7a7a1528"

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
