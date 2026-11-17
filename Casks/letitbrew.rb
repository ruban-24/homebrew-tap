cask "letitbrew" do
  version "1.0.1"
  sha256 "783290321a17e5d74bc29dece3504f04779d3a94b1d63aa9e3d651303df98d25"

  url "https://github.com/ruban-24/letitbrew/releases/download/v#{version}/LetItBrew-#{version}.dmg"
  name "Let It Brew"
  desc "Menu-bar app that prevents sleep while coding agents work"
  homepage "https://github.com/ruban-24/letitbrew"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Let It Brew.app"
  binary "#{appdir}/Let It Brew.app/Contents/Helpers/letitbrew"

  uninstall quit: "com.ruban24.letitbrew"

  zap trash: [
    "~/Library/Application Support/LetItBrew",
    "~/Library/Preferences/com.ruban24.letitbrew.plist",
  ]

  caveats <<~EOS
    Let It Brew must run from /Applications/Let It Brew.app.

    Before `brew uninstall`, open Settings → About → Uninstall Let It Brew…
    so the app can release its holds, disconnect its agent hooks, and
    unregister its background service. Removing the app first can leave
    that service registered. See:
      https://github.com/ruban-24/letitbrew/blob/main/docs/UNINSTALL.md
  EOS
end
