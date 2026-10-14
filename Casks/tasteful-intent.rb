cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.14.0"
  sha256 arm:   "a3edf68bc92290fdb27d0f771c1ac7d55cb6c0e2c13abd2430c49b898f0c860b",
         intel: "8f7ea4f49d970bf74bf01ed212da8c4ffbaf4459950b524a9460e378bd12ee4f"

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
