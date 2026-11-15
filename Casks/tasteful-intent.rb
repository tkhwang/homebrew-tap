cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.16.1"
  sha256 arm:   "e84c9f53495735c7eaff15036fe8ece46fa9da38baa0e873349d878a621054d4",
         intel: "a6dfa03e44104c29ca781e9fec8cc78c436c4a65420fcd56f66723875b9ac3e0"

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
