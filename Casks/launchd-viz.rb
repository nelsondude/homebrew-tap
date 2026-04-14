cask "launchd-viz" do
  version "1.1.0"
  sha256 "c65c218584375f29e18b22162cf4c3568e54feac5fb1fd00548c02daa1930ae3"

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
