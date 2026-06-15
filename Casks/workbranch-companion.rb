cask "workbranch-companion" do
  version "1.12.0"
  sha256 "79d30f2dfcf0ca620345fa69f00b6737225d08d3a1f7f56ac9204162f426bfa3"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"
end
