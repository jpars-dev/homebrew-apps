cask "claudvisor" do
  version "0.1.0"
  sha256 "1320e5d3b4ee2210193b506e0c1803c7510a91e9a0b78299c012f9ec4cbd9e93"

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
