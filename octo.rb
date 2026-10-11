class Octo < Formula
  desc "Execution intelligence engine for software repositories and AI agents"
  homepage "https://github.com/Octo-sh/Octo-CLI"
  url "https://github.com/Octo-sh/Octo-CLI/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "6c0f3725312698977568329dc21f1852047fb14cb60b5be6f19c4762c3614e55"
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
