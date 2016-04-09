class Mmkcmd < Formula
  desc "Utility to map OS X multimedia keys to commands"
  homepage "https://github.com/fernandotcl/mmkcmd"
  url "https://github.com/fernandotcl/mmkcmd/archive/release-1.0.0.tar.gz"
  sha256 "06eb50831783baa8f1affc26ae1b531ae1ea2b513ff5260b8f1794bf56241d4e"
  head "https://github.com/fernandotcl/mmkcmd.git"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
    man1.install "man/mmkcmd.1"
  end

  test do
    system "#{bin}/mmkcmd", "--help"
  end
end
