class Btag < Formula
  desc "Command-line based audio file tagger"
  homepage "https://github.com/fernandotcl/btag"
  url "https://github.com/fernandotcl/btag/archive/release-1.4.1.tar.gz"
  sha256 "a4a7b907f01ac6c65689fc7b12b0fa2a77645c488bcafab2049bb4965cd15e80"
  head "https://github.com/fernandotcl/btag.git"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "boost"
  depends_on "libcue"
  depends_on "libedit"
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
