require 'formula'

class Btag < Formula
  homepage 'https://github.com/fernandotcl/btag'
  head 'https://github.com/fernandotcl/btag.git'
  url 'https://github.com/fernandotcl/btag/archive/release-1.2.0.tar.gz'
  sha1 '7b4a17c3c861dcd610b104e665a0560d18b00a18'

  depends_on 'cmake' => :build
  depends_on 'pkg-config' => :build
  depends_on 'boost'
  depends_on 'libcue'
  depends_on 'taglib'

  def install
    system "cmake", ".", "-DENABLE_TESTS=1", *std_cmake_args
    system "make"
    system "make check"
    system "make install"
    man1.install "man/btag.1"
  end
end
