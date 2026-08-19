cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "4484b39ad53d3e601887aee83098c83699a956d544d6800857c0009d4aa52c08",
         intel: "495ed7fd63d43137d690409a50690ace534c87c58c58f5d1a125c5e74a635235"

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
