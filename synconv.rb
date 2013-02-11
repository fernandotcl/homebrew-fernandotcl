require 'formula'

class Synconv < Formula
  homepage 'https://github.com/fernandotcl/synconv'
  head 'https://github.com/fernandotcl/synconv.git'

  depends_on 'cmake' => :build
  depends_on 'pkg-config' => :build
  depends_on 'taglib'
  depends_on 'flac' => :optional
  depends_on 'lame' => :optional
  depends_on 'vorbis-tools' => :optional

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
    man1.install "man/synconv.1"
  end
end
