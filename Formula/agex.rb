class Agex < Formula
  desc "Worktree-isolated task runner for AI coding agents"
  homepage "https://github.com/ruban-24/agex"
  url "https://registry.npmjs.org/@ruban24/agex/-/agex-0.6.0.tgz"
  sha256 "116c01d25bc1a8cc3206f64bce8227552fee5eb5e54e37dcd21da4cfdaa78dac"
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
