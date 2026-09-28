class Switchboard < Formula
  desc "Model and effort routing for coding agents, with Jev support"
  homepage "https://github.com/ruban-24/switchboard"
  url "https://registry.npmjs.org/@ruban24/switchboard/-/switchboard-0.2.0.tgz"
  version "0.2.0"
  sha256 "032d53941886606f0203c18b75220e00611ff65de69cae13af3d8ef9d79bd60f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    ENV["SWITCHBOARD_HOME"] = (testpath/"config").to_s
    system bin/"switchboard", "init", "--yes"
    system bin/"switchboard", "config", "check"
    assert_path_exists testpath/"config/policy.json"
  end
end
