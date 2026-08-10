cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "7e37b9cd7bdd67dff3feed4ea7ab000fc64224d7b2feba1d5e2cb1c371577e25",
         intel: "3ae5ea630678f68f47758e81ccd76a379f7af1e72490ec39c4784be11b7afcff"

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
