cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "8e196880f4b0e1b94e8253367bcba71d9025440b8aa44045c4929143d794c716",
         intel: "3f9bbdd9b33a5aa22768cc7bd687e76948b16168d71e562a0240a299b61ea387"

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
