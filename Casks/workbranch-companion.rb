cask "workbranch-companion" do
  version "1.7.0"
  sha256 "4908a59d6248f926ec24f05a9ff477651faf725297220511050a88afbf58eb2e"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"
end
