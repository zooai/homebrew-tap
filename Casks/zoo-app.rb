cask "zoo-app" do
  version "1.1.18.37"
  release_tag = "1.1.18"

  on_arm do
    sha256 "cb3d9220f706cc5d7889ae909dcc6cf1093e3148c44ad95aceef9399ad51780e"
    arch_slug = "aarch64-apple-darwin"
  end

  url "https://github.com/zooai/app/releases/download/#{release_tag}/Zoo-#{version}_#{arch_slug}.dmg",
      verified: "github.com/zooai/app/"
  name "Zoo"
  desc "Zoo Labs Foundation desktop app — DeAI/DeSci research workbench"
  homepage "https://github.com/zooai/app"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Zoo.app"

  zap trash: [
    "~/Library/Application Support/ngo.zoo.app",
    "~/Library/Caches/ngo.zoo.app",
    "~/Library/Logs/ngo.zoo.app",
    "~/Library/Preferences/ngo.zoo.app.plist",
    "~/Library/Saved Application State/ngo.zoo.app.savedState",
  ]
end
