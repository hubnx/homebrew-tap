cask "write" do
  version "0.1.9"
  sha256 "c12131b939420dc5f40fd40e070032a23ff201d4c2799b3a4eb3db4eb563e5b4"

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
