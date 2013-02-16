require 'formula'

class MonkeysAudio < Formula
  homepage 'https://github.com/fernandotcl/monkeys-audio'
  head 'https://github.com/fernandotcl/monkeys-audio.git'

  depends_on 'cmake' => :build
  depends_on 'yasm' => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
    man1.install "man/mac.1"
  end
end
