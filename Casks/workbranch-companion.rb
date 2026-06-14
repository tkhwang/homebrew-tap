cask "workbranch-companion" do
  version "1.9.0"
  sha256 "c263703bc365c3bfe808bfd169bb41e4a6af045cce8adc84d33cb6cf02daf867"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"
end
