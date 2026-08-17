cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "b0d27f8c9084cb05e176531df75882295c871433911ee81c4c1f7c2c4a4b7097",
         intel: "c1b9c07a01618fca510038e998ad62ec3de724e06157c9eacf9a17303a3ab58c"

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
