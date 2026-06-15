cask "workbranch-companion" do
  version "1.12.1"
  sha256 "2b1ed1739b91b1740ccffc7a32351461cd934c1b070e0ae5e476da6b46c49903"

  url "https://github.com/tkhwang/workbranch/releases/download/workbranch-companion-v#{version}/WorkbranchCompanion-#{version}.zip"
  name "Workbranch Companion"
  desc "Menu bar companion for the workbranch CLI"
  homepage "https://github.com/tkhwang/workbranch"

  depends_on macos: :ventura

  app "WorkbranchCompanion.app"
end
