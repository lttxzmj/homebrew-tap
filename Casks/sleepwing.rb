cask "sleepwing" do
  version "0.6.1,18"
  sha256 "db0f390533fd72013cc5c77df02ff9bee7b80954a1cb26648369be6abf9fc105"

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
