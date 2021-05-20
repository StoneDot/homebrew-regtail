class Regtail < Formula
  desc "Regex base tail written in Rust"
  homepage "https://github.com/StoneDot/regtail"
  url "https://github.com/StoneDot/regtail/archive/v0.1.1.tar.gz"
  sha256 "42d25cf5572492b1c4d6c024200de245b9899e6e9c590c73144967ad30627a6f"
  depends_on "rust" => :build
  head "https://github.com/StoneDot/regtail.git"

  def install
    system "cargo", "install", "--root", prefix,
                               "--path", "."
  end

  test do
    regtail --version
  end
end
