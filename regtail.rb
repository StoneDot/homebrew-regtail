class Regtail < Formula
  desc "Regex base tail written in Rust"
  homepage "https://github.com/StoneDot/regtail"
  url "https://github.com/StoneDot/regtail/archive/v0.0.1.tar.gz"
  sha256 "9bcaf304afc4d4348c0240c700e9b211e9db341e5773aac8c42a72730c4bdace"
  depends_on "rust" => :build
  head "https://github.com/StoneDot/regtail.git"

  def install
    system "cargo", "install", "--root", prefix,
                               "--path", "."
  end

  test do
    ripgrep --version
  end
end
