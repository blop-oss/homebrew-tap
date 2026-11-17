class Blop < Formula
  desc "Local-first OpenTelemetry observability CLI for coding agents"
  homepage "https://github.com/blop-oss/blop-app/tree/main/packages/blop"
  url "https://registry.npmjs.org/@blopai/cli/-/cli-1.11.3.tgz"
  sha256 "bca965e6a96ad7b888efe7e8eb063152b7f98d73baa170986f175ced3f20e66d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blop --version")
  end
end
