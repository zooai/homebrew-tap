class Zoo < Formula
  desc "Zoo Labs Foundation CLI — DeAI and DeSci tooling"
  homepage "https://github.com/zooai/cli"
  url "https://github.com/zooai/cli/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "Apache-2.0"
  head "https://github.com/zooai/cli.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.Version=#{version}
    ]
    system "go", "build", "-trimpath", "-ldflags=#{ldflags.join(" ")}",
           "-o", bin/"zoo", "."
  end

  test do
    assert_match(/zoo/i, shell_output("#{bin}/zoo --help 2>&1", 0))
  end
end
