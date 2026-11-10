class Blop < Formula
  desc "Local-first OpenTelemetry observability CLI for coding agents"
  homepage "https://github.com/blop-oss/blop-app/tree/main/packages/blop"
  url "https://registry.npmjs.org/@blopai/cli/-/cli-1.9.0.tgz"
  sha256 "02978a5f41a98745720514b99c366156ea3897c2bda1706bc18a769a16c6fe22"
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
