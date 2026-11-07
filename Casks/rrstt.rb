cask "rrstt" do
  version "0.5.27"
  sha256 "75d17707e1b5a4fcbeed615cfd32bd0a3f433fe7efc27c9f5956d7cf8cf5e70d"

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
