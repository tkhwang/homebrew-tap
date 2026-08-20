cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "66c0dbe1389614de64c63645ec58fc6c869845f98811b38ee29a220643bae048",
         intel: "e55ca1a60ab03f27107adc3578bf6e0479fc910cddcae5af4ecef35530ad7d38"

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
