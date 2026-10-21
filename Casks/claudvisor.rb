cask "claudvisor" do
  version "0.1.5"
  sha256 "591bb7990854a789722facaa1b0ae1233cbca92abf1895cb0d95300f463ece68"

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
