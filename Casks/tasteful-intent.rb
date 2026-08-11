cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "0c7bfd78c6556849c8235dbe23d89e35a33ec964c05f705485d852f23131969a",
         intel: "fc4f1f8428134c975b671eef857603ea122ed504a943a7d13977f89e6e3fd192"

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
