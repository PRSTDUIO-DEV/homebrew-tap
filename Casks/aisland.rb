cask "aisland" do
  version "1.4.1"
  sha256 "fcc58b522314eef53e972ebad416cc1a80e60bc1e7c331ff37298901402b2e17"

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
