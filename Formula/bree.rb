class Bree < Formula
  desc "Local memory inspection for macOS"
  homepage "https://github.com/yuyongyan29-dev/Bree"
  url "https://github.com/yuyongyan29-dev/Bree/releases/download/v0.3.0-alpha.3/bree-aarch64-apple-darwin", using: :nounzip
  version "0.3.0-alpha.3"
  sha256 "c8ead0c03938cc21fcd0839009d1d4bec232faaee7e6ef408c1453b3dc34e81a"
  license "GPL-3.0-only"

  bottle do
    root_url "https://github.com/yuyongyan29-dev/Bree/releases/download/v0.3.0-alpha.3"
    sha256 cellar: :any_skip_relocation, arm64_golden_gate: "7cd0e5ffd403b7e282162336dc43390830d43df9bd4ba08d143c78f37f5ab4ae"
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
