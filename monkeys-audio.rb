require 'formula'

class MonkeysAudio < Formula
  homepage 'https://github.com/fernandotcl/monkeys-audio'
  head 'https://github.com/fernandotcl/monkeys-audio.git'

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
