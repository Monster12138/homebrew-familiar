class FamiliarCli < Formula
  desc "Local-first coding agent companion server and hook CLI"
  homepage "https://github.com/Monster12138/familiar"
  url "https://github.com/Monster12138/familiar/archive/refs/tags/v2.4.1.tar.gz"
  sha256 "f8f996f11ded3a0bc27983f0903f3691cfccbc48a966b5b903256163138ee233"
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
