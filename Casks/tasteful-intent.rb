cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.15.0"
  sha256 arm:   "51f020a0f74711ca1a4b8975acd1d958a2f15a6e82097d8113232efa85d3745a",
         intel: "38b5fc4d42425066f0e547635c1578a706734f583c029b34cd0b3a75ecae1587"

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
