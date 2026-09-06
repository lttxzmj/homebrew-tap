cask "sleepwing" do
  version "0.6.0,17"
  sha256 "a5a1434bc7b7ddbaba6bb313beb6292bc87e0e2cf50be1e83e0471a234c959b0"

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
