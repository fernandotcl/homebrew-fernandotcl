require 'formula'

class Btag < Formula
  homepage 'https://github.com/fernandotcl/btag'
  head 'https://github.com/fernandotcl/btag.git'
  url 'https://github.com/fernandotcl/btag/archive/release-1.4.0.tar.gz'
  sha1 'f14e8407cbff43a36c84c9f337b57e6e0335bfb1'

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
