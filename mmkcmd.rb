require 'formula'

class Mmkcmd < Formula
  homepage 'https://github.com/fernandotcl/mmkcmd'
  head 'https://github.com/fernandotcl/mmkcmd.git'

  depends_on 'cmake' => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
