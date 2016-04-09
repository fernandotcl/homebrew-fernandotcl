class Synconv < Formula
  desc "Command-line based audio format transcoder with rsync-like semantics"
  homepage "https://github.com/fernandotcl/synconv"
  url "https://github.com/fernandotcl/synconv/archive/release-2.0.2.tar.gz"
  sha256 "b3661c57f0c6c7cc332f4ef540c77372102634e37b3c55636c8a17d9bb42f130"
  head "https://github.com/fernandotcl/synconv.git"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "taglib"
  depends_on "flac" => :optional
  depends_on "lame" => :optional
  depends_on "vorbis-tools" => :optional

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
    man1.install "man/synconv.1"
  end

  test do
    system "#{bin}/synconv", "--help"
  end
end
