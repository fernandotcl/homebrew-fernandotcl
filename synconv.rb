require 'formula'

class Synconv < Formula
  homepage 'https://github.com/fernandotcl/synconv'
  head 'https://github.com/fernandotcl/synconv.git'
  url 'https://github.com/fernandotcl/synconv/archive/release-2.0.0.tar.gz'
  sha1 'f6ae25d35c863748ec92fa4f88737fb898f40ccb'

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
