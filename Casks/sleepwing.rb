cask "sleepwing" do
  version "0.6.4,21"
  sha256 "920a851ad9cf2be78b0b2737d5cbe46ec57d3e0faf3bcfd98008cca12190a139"

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
