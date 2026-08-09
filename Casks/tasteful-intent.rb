cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "54701cf6cc751fcc66107709dcba1836b76cd051d3c6bdc89359871d0496f1c2",
         intel: "b20856dd44edd014a01d9237b84fa0c799ed31e8b305a0451c2ab4044ed3c16c"

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
