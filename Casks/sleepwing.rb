cask "sleepwing" do
  version "0.6.3,20"
  sha256 "f56531f054bf824a31b9494e2de23f51b2890f3b60eda12b7cb16120f197005f"

  url "https://github.com/lttxzmj/sleepwing/releases/download/v#{version.csv.first}-beta.1/Sleepwing-#{version.csv.first}-#{version.csv.second}-beta-macOS-arm64.zip"
  name "Sleepwing"
  desc "Desktop pet that watches AI coding agents and turns their work time into breaks"
  homepage "https://lttxzmj.github.io/sleepwing/"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Sleepwing.app"

  zap trash: [
    "~/Library/Application Support/Perch",
  ]
end
