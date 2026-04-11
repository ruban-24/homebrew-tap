class Agex < Formula
  desc "Worktree-isolated task runner for AI coding agents"
  homepage "https://github.com/ruban-24/agex"
  url "https://registry.npmjs.org/@ruban24/agex/-/agex-0.3.7.tgz"
  sha256 "6f610f7c89890a618ac7aee6b1d8e70dbfc498a62272b4d07d81931c7d89ce95"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agex --version")
  end
end
