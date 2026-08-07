cask "intent-memo" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "f11dce6508c03a6f532922150d3c59c188da42de32df193820c1ec5cbf37fef5",
         intel: "cdd980ed6b4f8c5ec07e39bf9ab19af78668afda16e465a29100027524899568"

  url "https://github.com/tkhwang/intent-memo/releases/download/v#{version}/IntentMemo_#{version}_#{arch}.dmg"
  name "Intent Memo"
  desc "Markdown memo editor for human intentions"
  homepage "https://github.com/tkhwang/intent-memo"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "IntentMemo.app"

  uninstall quit: "app.tkbetter.intentmemo"

end
