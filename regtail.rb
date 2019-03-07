class Regtail < Formula
  desc "Regex base tail written in Rust"
  homepage "https://github.com/StoneDot/regtail"
  url "https://github.com/StoneDot/regtail/archive/v0.0.1.tar.gz"
  sha256 "9bcaf304afc4d4348c0240c700e9b211e9db341e5773aac8c42a72730c4bdace"
  depends_on "rust"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test regtail`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "cargo", "test", "--release"
  end
end
