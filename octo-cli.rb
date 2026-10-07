class OctoCli < Formula
  desc "Execution intelligence engine for software repositories and AI agents"
  homepage "https://github.com/Harshul23/Octo-CLI"
  url "https://github.com/Harshul23/Octo-CLI/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "38fab5db81afef1764c966c14d4d39cb6e12e0947e2b1582aec190ff6dd89f1d"
  license "MIT"
  head "https://github.com/Harshul23/Octo-CLI.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"octo"), "./cmd"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
