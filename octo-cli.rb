class OctoCli < Formula
  desc "Open-source GitHub automation tool for managing contributions"
  homepage "https://github.com/harshul23/octo-cli"
  url "https://github.com/harshul23/octo-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "YOUR_TARBALL_SHA256_HERE" # We will get this in the next step
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"octo"), "./cmd"
  end

  test do
    system "#{bin}/octo", "--version"
  end
end
