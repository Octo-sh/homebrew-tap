class Octo < Formula
  desc "Execution intelligence engine for software repositories and AI agents"
  homepage "https://github.com/Octo-sh/Octo-CLI"
  url "https://github.com/Octo-sh/Octo-CLI/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "a93557a0d97d6ed9dad64328d2cac823f3542c96dfb10d0dc4502148b9a4db78"
  license "MIT"
  head "https://github.com/Octo-sh/Octo-CLI.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"octo"), "./cmd/octo"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
