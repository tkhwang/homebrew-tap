cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "2ea9bacdbe24841c3be0626469303156f04ba810f742c45fb06cd42fa4387cbf",
         intel: "8a69b8c716bfcdc794a5aa0d754e9da45964f1a45f7823755b042d4745b6a5fb"

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
