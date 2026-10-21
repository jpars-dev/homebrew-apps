cask "claudvisor" do
  version "0.1.4"
  sha256 "ea9172ab548f0da53330c09d59ebe072a131ac0c8a498cec473d685aa0f14378"

  url "https://jpars.dev/apps/claudvisor/download/Claudvisor-#{version}.dmg"
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
