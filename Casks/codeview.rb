cask "codeview" do
  version "1.4.2"
  sha256 "1541e32a71f9b14e99497f69a844cf688814f4e4e78e7a2134183e87c3f65e1e"

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
