cask "intent-memo" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "68f4164f1cb21701789497f115e05a04da7d90f5cc442e61397002c5663ea2e5",
         intel: "7fd24d6168301b6640caeb92ff8ef83a435637a7b9f0ae3a3a2286d5b2ec6ea6"

  url "https://github.com/tkhwang/intent-memo/releases/download/v#{version}/IntentMemo_#{version}_#{arch}.dmg"
  name "Intent Memo"
  desc "Markdown memo editor for human intentions"
  homepage "https://github.com/tkhwang/intent-memo"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "IntentMemo.app"

  uninstall quit: "app.tkbetter.intentmemo"

end
