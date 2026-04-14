cask "launchd-viz" do
  version "1.2.0"
  sha256 "f8b2462b4655f5e1c07a6dd6cd85009730e434d6971a44e93f63c6091c4479b9"

  url "https://github.com/nelsondude/launchd-viz/releases/download/v#{version}/Launchd.Viz-#{version}-universal.dmg"
  name "Launchd Viz"
  desc "macOS Launch Agent & Daemon Manager"
  homepage "https://github.com/nelsondude/launchd-viz"

  depends_on macos: ">= :catalina"

  app "Launchd Viz.app"

  caveats <<~EOS
    #{token} is not signed. On first launch you may need to:
      Right-click the app > Open, or run:
      xattr -cr /Applications/Launchd\\ Viz.app
  EOS

  zap trash: [
    "~/Library/Application Support/launchd-viz",
    "~/Library/Preferences/com.nelsondude.launchd-viz.plist",
  ]
end
