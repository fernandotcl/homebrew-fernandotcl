class Ddcctl < Formula
  desc "DDC monitor controls for macOS"
  homepage "https://github.com/kfix/ddcctl"
  head "https://github.com/kfix/ddcctl.git"

  def install
    system "make"
    bin.install "./bin/release/ddcctl"
  end
end
