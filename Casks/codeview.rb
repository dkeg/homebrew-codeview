cask "codeview" do
  version "1.4.2"
  sha256 "56a726b9baa908ad3c7a6c18de7f837254f1aff28ae150644c80ff047a545f46"

  url "https://github.com/dkeg/codeview/releases/download/v#{version}/CodeView-#{version}-arm64.dmg"
  name "CodeView"
  desc "Native macOS code and markdown editor with integrated terminal"
  homepage "https://github.com/dkeg/codeview"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "CodeView.app"

  zap trash: [
    "~/Library/Application Support/CodeView",
    "~/Library/Preferences/com.codeview.app.plist",
    "~/Library/Saved Application State/com.codeview.app.savedState",
  ]
end
