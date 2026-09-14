class FamiliarCli < Formula
  desc "Local-first coding agent companion server and hook CLI"
  homepage "https://github.com/Monster12138/familiar"
  url "https://github.com/Monster12138/familiar/archive/refs/tags/v2.4.0.tar.gz"
  sha256 "d626e69d03b0a5eefd0c45ba863cb069fcbe95f4784b76f5857271e308b856f0"
  license "MIT"

  depends_on "openssl@3" => :build if OS.linux?
  depends_on "pkg-config" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/familiar-cli", "--root", prefix
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/familiar-cli --version")
  end
end
