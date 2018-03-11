class MonkeysAudio < Formula
  desc "Port of Monkey's Audio Codec to Unix-like systems"
  homepage "https://github.com/fernandotcl/monkeys-audio"
  url "https://github.com/fernandotcl/monkeys-audio/archive/release-3.99.6.tar.gz"
  sha256 "0d279bf2042ac5a8fc57674de0f20a4c78f8f33926346d98949bc312c76860f1"
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
