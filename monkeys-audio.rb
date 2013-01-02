require 'formula'

class MonkeysAudio < Formula
  homepage 'https://github.com/fernandotcl/monkeys-audio'
  head 'https://github.com/fernandotcl/monkeys-audio.git'
  url 'https://github.com/fernandotcl/monkeys-audio/archive/release-3.99-u4-b6.tar.gz'
  sha1 'bda0a6744c3da22a8b9949dad0e1375269bfb9d7'

  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  depends_on 'yasm' => :build

  def install
    system "./autogen.sh"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
