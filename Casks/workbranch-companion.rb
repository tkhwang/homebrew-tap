cask "workbranch-companion" do
  version "1.5.0"
  sha256 "3788de03bf9349a2484fcdd10b87639d5832781224861b212675cf48a67500e8"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"
end
