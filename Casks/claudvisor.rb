cask "claudvisor" do
  version "0.1.2"
  sha256 "07e4fdc5babe305cde11bf33b136f6d7f09c0ca092857e8dcdc379aa9b89cf6a"

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
