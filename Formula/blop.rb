class Blop < Formula
  desc "Local-first OpenTelemetry observability CLI for coding agents"
  homepage "https://github.com/blop-oss/blop-app/tree/main/packages/blop"
  url "https://registry.npmjs.org/@blopai/cli/-/cli-1.11.2.tgz"
  sha256 "1f133b58efa8128015039f6f66e2fe38452129ad6ae12efefa57a5b753146630"
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
