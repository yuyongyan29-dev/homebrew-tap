class Bree < Formula
  desc "Local memory inspection for macOS"
  homepage "https://github.com/yuyongyan29-dev/Bree"
  url "https://github.com/yuyongyan29-dev/Bree/releases/download/v0.3.0-alpha.6/bree-aarch64-apple-darwin", using: :nounzip
  version "0.3.0-alpha.6"
  sha256 "da87aff65ce7bddfa6246feb81cfc96bb656dc7a85dffcb49bf24b4ac7953718"
  license "GPL-3.0-only"

  bottle do
    root_url "https://github.com/yuyongyan29-dev/Bree/releases/download/v0.3.0-alpha.6"
    sha256 cellar: :any_skip_relocation, arm64_golden_gate: "a77ce9fb0a6e5aab4dc5ef4dd4153baceb197477765e000ece66ed30bde1d9d0"
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
