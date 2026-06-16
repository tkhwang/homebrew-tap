cask "workbranch-companion" do
  version "1.13.0"
  sha256 "292161cd00c3b2451e069d53c32c6485b01da21e1980f55fa07f45781b39e4e3"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"
end
