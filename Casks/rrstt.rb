cask "rrstt" do
  version "0.5.40"
  sha256 "95de6d0ae0febe175620c3c3e9338e753e31b6d860c2150784af39647cc7a5f1"

  url "https://rrstt.app/download/cortex-mac/#{version}"
  name "RRSTT"
  desc "Projects, tasks and time tracking, planned with Cortex"
  homepage "https://rrstt.app/"

  livecheck do
    url "https://rrstt.app/download/cortex-mac/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "RRSTT.app"

  zap trash: [
    "~/Library/Application Support/com.rrstt.cortex",
    "~/Library/Caches/com.rrstt.cortex",
    "~/Library/HTTPStorages/com.rrstt.cortex",
    "~/Library/Logs/com.rrstt.cortex",
    "~/Library/Preferences/com.rrstt.cortex.plist",
    "~/Library/Saved Application State/com.rrstt.cortex.savedState",
    "~/Library/WebKit/com.rrstt.cortex",
  ]
end
