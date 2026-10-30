cask "rrstt" do
  version "0.2.2"
  sha256 "bda3f21e8abf1083d38beafd69f6de5da57c994c9e0e978c2bddb0adb9a90e13"

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
