cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "28617040e9138d8e732b04dbb81ea9598f3337dfa0c558345c16cf564775fcb4",
         intel: "e0604e1095f347ee9f926da0bfc1911a5d58ad63fa3016e26412ab8902255f0a"

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
