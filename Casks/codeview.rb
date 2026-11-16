cask "codeview" do
  arch arm: "-arm64"

  version "2.0.0"
  sha256 arm:   "5091450d94464cad1d51c693b83f82f9d3e397d3502b4b8bd39bdc09798517ea",
         intel: "c4dda74696be4ace1b3052f712097460ebf4e459fc7bc257494de1eb08db34d1"

  url "https://github.com/dkeg/codeview/releases/download/v#{version}/CodeView-#{version}#{arch}.dmg"
  name "CodeView"
  desc "Code and markdown editor with integrated terminal"
  homepage "https://github.com/dkeg/codeview"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "CodeView.app"

  zap trash: [
    "~/Library/Application Support/CodeView",
    "~/Library/Caches/com.codeview.app",
    "~/Library/Preferences/com.codeview.app.plist",
    "~/Library/Saved Application State/com.codeview.app.savedState",
    "~/Library/WebKit/com.codeview.app",
  ]
end
