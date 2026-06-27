cask "codeview" do
  version "1.6.0"
  sha256 "6768c8d04f8e0e90cf50699681b44801ab5b2f3dd4eb3304c02ef6e446bedce0"

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
