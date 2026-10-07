class Bree < Formula
  desc "Local memory inspection for macOS"
  homepage "https://github.com/yuyongyan29-dev/Bree"
  url "https://github.com/yuyongyan29-dev/Bree/releases/download/v0.3.0-alpha.1/bree-aarch64-apple-darwin", using: :nounzip
  version "0.3.0-alpha.1"
  sha256 "3bff96bb4c2dba09ac30c668fe408a40f93f31ec6d9b711d329f6384db0e64a7"
  license "GPL-3.0-only"

  bottle do
    root_url "https://github.com/yuyongyan29-dev/Bree/releases/download/v0.3.0-alpha.1"
    sha256 cellar: :any_skip_relocation, arm64_golden_gate: "405a7518ba3e1d912a1d9f8b0c310a0b18c0adf117cf9b72941e0dd5e41c71f7"
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
