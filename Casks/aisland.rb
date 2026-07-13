cask "aisland" do
  version "1.0.0"
  sha256 "f7fe230164f030bdb2171680f0502b541354f49cdc683da3fcd2c5d43f4889b1"

  url "https://github.com/PRSTDUIO-DEV/AIsland/releases/download/v#{version}/AIsland-#{version}.dmg"
  name "AIsland"
  desc "Dynamic Island-style usage meter for Claude, GPT (Codex) and Gemini CLIs"
  homepage "https://github.com/PRSTDUIO-DEV/AIsland"

  depends_on macos: ">= :sonoma"

  app "AIsland.app"

  caveats <<~EOS
    AIsland is ad-hoc signed (not notarized). If macOS blocks the first launch:
      xattr -dr com.apple.quarantine "/Applications/AIsland.app"
    or right-click the app and choose Open.
  EOS
end
