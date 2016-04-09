class MonkeysAudio < Formula
  desc "Port of Monkey's Audio Codec to Unix-like systems"
  homepage "https://github.com/fernandotcl/monkeys-audio"
  url "https://github.com/fernandotcl/monkeys-audio/archive/release-3.99.5.tar.gz"
  sha256 "0b87ae68f543374522b95449e133cbbadfc5e4ca9e22c75f0265ef7c52ec593f"
  head "https://github.com/fernandotcl/monkeys-audio.git"

  depends_on "cmake" => :build
  depends_on "yasm" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
    man1.install "man/mac.1"
  end

  test do
    system "#{bin}/mac", "-h"
  end
end
