cask "sleepwing" do
  version "0.6.2,19"
  sha256 "e1cf9b1b9097417cca59ff4ac71bb7599e070ec65a8a6e216a0defb92dc141f0"

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
