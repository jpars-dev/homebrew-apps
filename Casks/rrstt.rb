cask "rrstt" do
  version "0.2.1"
  sha256 "9fe3b9f16fbe2bc14dff6cc070ce9b3889f4bf9dadf75843e0fa6ad3a4c08093"

  url "https://pggw.rrstt.app/storage/v1/object/public/downloads/cortex/cortex-#{version}-aarch64.dmg"
  name "RRSTT Cortex"
  desc "Projects, tasks and time tracking, planned with Cortex"
  homepage "https://rrstt.app/"

  livecheck do
    url "https://pggw.rrstt.app/storage/v1/object/public/downloads/cortex/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "RRSTT Cortex.app"

  zap trash: "~/Library/Application Support/com.rrstt.cortex"
end
