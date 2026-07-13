cask "aisland" do
  version "1.5.1"
  sha256 "eb46a3603f5e4c6c6006bd49e6e1c185d177ae9959b6426ba3e3160834641e39"

  url "https://github.com/PRSTDUIO-DEV/AIsland/releases/download/v#{version}/AIsland-#{version}.dmg"
  name "AIsland"
  desc "Dynamic Island-style usage meter for Claude, Codex and Gemini CLIs"
  homepage "https://github.com/PRSTDUIO-DEV/AIsland"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :sonoma"

  app "AIsland.app"

  uninstall quit: "local.aisland"

  zap trash: "~/Library/Preferences/local.aisland.plist"

  caveats <<~EOS
    AIsland is ad-hoc signed (not notarized). If macOS blocks the first launch:
      xattr -dr com.apple.quarantine "/Applications/AIsland.app"
    or right-click the app and choose Open.
  EOS
end
