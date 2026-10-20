cask "claudvisor" do
  version "0.1.3"
  sha256 "0207bba1b44e50c715b877e7ff8df89e4f6fb71243352ee8ef3acf13dea2ce49"

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
