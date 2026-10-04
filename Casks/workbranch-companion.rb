cask "workbranch-companion" do
  version "2.22.0"
  sha256 "857de4250c4642722bf54f5cc51658c1b0a7dde7dac56abb91017ae3992be157"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"

  uninstall quit: "dev.tkhwang.workbranch.companion"
end
