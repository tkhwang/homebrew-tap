cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "d8ba6e2977f83b787e4360acefd3da3395036ca02a7be23c3cc64e1409404fc9",
         intel: "cc26a9c76f1821a71bee8847783996b7b34e866be8db8e02a453d22f749f2133"

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
