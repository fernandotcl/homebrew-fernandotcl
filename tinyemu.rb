class Tinyemu < Formula
  desc "System emulator for the RISC-V architecture"
  homepage "https://github.com/fernandotcl/TinyEMU"
  head "https://github.com/fernandotcl/TinyEMU.git"

  depends_on "openssl"
  depends_on "sdl2"

  def install
    system "make", "CONFIG_MACOS=y"
    bin.install "temu"
  end
end
