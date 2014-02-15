require 'formula'

class Mmkcmd < Formula
  homepage 'https://github.com/fernandotcl/mmkcmd'
  head 'https://github.com/fernandotcl/mmkcmd.git'
  url 'https://github.com/fernandotcl/mmkcmd/archive/release-1.0.0.tar.gz'
  sha1 '58b29911e6bfc1f809a8272720332fa7552cc3af'

  depends_on 'cmake' => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
    man1.install "man/mmkcmd.1"
  end
end
