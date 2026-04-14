class Agex < Formula
  desc "Worktree-isolated task runner for AI coding agents"
  homepage "https://github.com/ruban-24/agex"
  url "https://registry.npmjs.org/@ruban24/agex/-/agex-0.5.0.tgz"
  sha256 "e5ac2b941930a19ef26b3c4606ee082247659a6d6ed03afcfd0fc35a16fc9a1c"
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
