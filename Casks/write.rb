cask "write" do
  version "0.1.6"
  sha256 "d11ff85e8f90b18254aa4c85ebb2ab532aa6ba149f7447ab5cc6281ae6c8a07b"

  url "https://media.hubnx.com/desktop/#{version}/Write-#{version}.dmg"
  name "Write by Hub Nexus"
  desc "Free Markdown editor for the desktop that publishes to Hub Nexus"
  homepage "https://www.hubnx.com/apps"

  livecheck do
    url "https://www.hubnx.com/api/desktop/update?target=darwin&arch=aarch64&version=0.0.0"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Write.app"

  zap trash: [
    "~/Library/Application Support/com.hubnx.write",
    "~/Library/Caches/com.hubnx.write",
    "~/Library/Preferences/com.hubnx.write.plist",
    "~/Library/Saved Application State/com.hubnx.write.savedState",
    "~/Library/WebKit/com.hubnx.write",
  ]
end
