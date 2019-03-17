class Regtail < Formula
  desc "Regex base tail written in Rust"
  homepage "https://github.com/StoneDot/regtail"
  url "https://github.com/StoneDot/regtail/archive/v0.0.2.tar.gz"
  sha256 "199852f842ca5b389845554d271655adf978c01c5c99f95ab664476a85fbb0c7"
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
