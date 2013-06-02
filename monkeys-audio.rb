require 'formula'

class MonkeysAudio < Formula
  homepage 'https://github.com/fernandotcl/monkeys-audio'
  head 'https://github.com/fernandotcl/monkeys-audio.git'
  url 'https://github.com/fernandotcl/monkeys-audio/archive/release-3.99.5.tar.gz'
  sha1 '09d4067b38778b7b3ff3f7a183387fca9a821965'

  depends_on 'cmake' => :build
  depends_on 'yasm' => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
    man1.install "man/mac.1"
  end
end
