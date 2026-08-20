cask "workbranch-companion" do
  version "2.14.0"
  sha256 "8aee10d5951593e6c1bdd3ee83d379ca9d2a49e3d5605dd3f877bee0be93b7ae"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"

  uninstall quit: "dev.tkhwang.workbranch.companion"
end
