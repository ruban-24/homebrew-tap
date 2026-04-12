class Agex < Formula
  desc "Worktree-isolated task runner for AI coding agents"
  homepage "https://github.com/ruban-24/agex"
  url "https://registry.npmjs.org/@ruban24/agex/-/agex-0.4.0.tgz"
  sha256 "23098f3ca8e91310678856725bd6d68eb341f89110c1744eb7c9d205ad917a4e"
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
