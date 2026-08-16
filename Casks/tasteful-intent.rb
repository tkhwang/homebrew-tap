cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "f768c309dee819fbb3005023b211451a345190dcd3764794f77f589ec48ea3a1",
         intel: "d28687ccd5ef3be059d5343534421ef9535a20692b813c77435d717a5bd8eb83"

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
