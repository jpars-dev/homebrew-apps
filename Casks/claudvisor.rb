cask "claudvisor" do
  version "0.1.1"
  sha256 "ce3480170ec67ffecb1736f1988c247a29a6383f4af6a7644093e167a9dd1834"

  url "https://jpars.dev/apps/claudvisor/Claudvisor-#{version}.dmg"
  name "Claudvisor"
  desc "Floating heads-up display for Claude Code loops"
  homepage "https://jpars.dev/apps/claudvisor"

  livecheck do
    url "https://jpars.dev/apps/claudvisor/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Claudvisor.app"

  zap trash: "~/.claudvisor"
end
