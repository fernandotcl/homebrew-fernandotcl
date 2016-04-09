class Btag < Formula
  desc "Command-line based audio file tagger"
  homepage "https://github.com/fernandotcl/btag"
  url "https://github.com/fernandotcl/btag/archive/release-1.4.0.tar.gz"
  sha256 "e127b3841fdddb50b6d644e0dc6b7d99bb5f90aabe6a90adf254b6cd2eaefb1a"
  head "https://github.com/fernandotcl/btag.git"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "boost"
  depends_on "libcue"
  depends_on "taglib"

  def install
    system "cmake", ".", "-DENABLE_TESTS=1", *std_cmake_args
    system "make"
    system "make", "check"
    system "make", "install"
    man1.install "man/btag.1"
  end

  test do
    system "#{bin}/btag", "--help"
  end
end
