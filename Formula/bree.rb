class Bree < Formula
  desc "Local memory inspection for macOS"
  homepage "https://github.com/yuyongyan29-dev/Bree"
  url "https://github.com/yuyongyan29-dev/Bree/releases/download/v0.3.0-alpha.4/bree-aarch64-apple-darwin", using: :nounzip
  version "0.3.0-alpha.4"
  sha256 "ee016793b42da0375934c5ce750dd72160f1292828684ad8c7b6e5a4aaa51a9c"
  license "GPL-3.0-only"

  bottle do
    root_url "https://github.com/yuyongyan29-dev/Bree/releases/download/v0.3.0-alpha.4"
    sha256 cellar: :any_skip_relocation, arm64_golden_gate: "6b9c2798f8c66716d361b8b7feeb5d884ff0403c3236929e0a1b19763916fb1a"
  end

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  def install
    bin.install "bree-aarch64-apple-darwin" => "bree"
    chmod 0755, bin/"bree"
  end

  test do
    assert_equal "bree #{version}", shell_output("#{bin}/bree --version").strip
    assert_match '"schema_version":1', shell_output("#{bin}/bree license --json")
  end
end
