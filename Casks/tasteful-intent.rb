cask "tasteful-intent" do
  arch arm: "aarch64", intel: "x64"

  version "1.11.0"
  sha256 arm:   "bfce77464d04906c37a5ef5249f933ddf0fb813f4823212a5e7977f7d48dc6da",
         intel: "c420379180122f368f0fb6318ac48b32942b05669bd9ce4ff479033ddfeb6c35"

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
