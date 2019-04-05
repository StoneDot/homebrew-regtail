class Regtail < Formula
  desc "Regex base tail written in Rust"
  homepage "https://github.com/StoneDot/regtail"
  url "https://github.com/StoneDot/regtail/archive/v0.1.0.tar.gz"
  sha256 "ef5f15980427d9e730aa633ae6846099681d67331ec2062120aaf3e3263b4fc5"
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
