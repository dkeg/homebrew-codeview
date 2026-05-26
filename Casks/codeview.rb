cask "codeview" do
  version "1.4.1"
  sha256 "224c1ef0d3019f41df43af4a453f41f07d26f35a277b05e98c011cbdd59a55e0"

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
