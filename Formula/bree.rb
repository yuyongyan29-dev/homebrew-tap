class Bree < Formula
  desc "Local memory inspection for macOS"
  homepage "https://github.com/yuyongyan29-dev/Bree"
  url "https://github.com/yuyongyan29-dev/Bree/releases/download/v0.3.0-alpha.2/bree-aarch64-apple-darwin", using: :nounzip
  version "0.3.0-alpha.2"
  sha256 "2896f189979d9bfdbb8a5860bf275635de3a2fa547e3f72d7db441ba8babd111"
  license "GPL-3.0-only"

  bottle do
    root_url "https://github.com/yuyongyan29-dev/Bree/releases/download/v0.3.0-alpha.2"
    sha256 cellar: :any_skip_relocation, arm64_golden_gate: "fca209c3e92e1d9f0f52e39ece22254d884fc77d4891c33535c543c4dfc853cc"
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
