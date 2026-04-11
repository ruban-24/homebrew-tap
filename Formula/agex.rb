class Agex < Formula
  desc "Worktree-isolated task runner for AI coding agents"
  homepage "https://github.com/ruban-24/agex"
  url "https://registry.npmjs.org/@ruban24/agex/-/agex-0.3.3.tgz"
  sha256 "5b588d551c584de87ad996c4c0ecaa264d390f4a7884813610eb39a9f51fe6a7"
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
