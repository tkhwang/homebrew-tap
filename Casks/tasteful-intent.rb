cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.16.0"
  sha256 arm:   "41a9c1a08ccc5eb6fb284ab299d8e4ed061ae0361786e373b770877477aa3ef2",
         intel: "36f21ccba6aba4a866e9d4ba08562926c360ad23805f37361d8e48231f418288"

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
