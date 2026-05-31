cask "codeview" do
  version "1.5.0"
  sha256 "27036a9c0ae58ce4781004b535edb68ab70fe30b25e57472fccf719648640d9b"

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
