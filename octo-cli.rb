class OctoCli < Formula
  desc "Execution intelligence engine for software repositories and AI agents"
  homepage "https://github.com/Harshul23/Octo-CLI"
  url "https://github.com/Harshul23/Octo-CLI/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "157dfa4f10954596fe36048787a69be29d250a2506182e5088d4f9bfeebdb216"
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
