cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.1"
  sha256 arm:   "c2a11feac4782d02201c4a4de92fa1d7a53ed170d14983eb240a39a33a8331da",
         intel: "3f54c180b62fa5e0f70e3ce19bfc22af1f2be987ab277aa10df96ae977081538"

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
