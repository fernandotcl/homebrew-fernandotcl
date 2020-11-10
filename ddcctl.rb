class Ddcctl < Formula
  desc "DDC monitor controls for macOS"
  homepage "https://github.com/kfix/ddcctl"
  head "https://github.com/kfix/ddcctl.git"

  def install
    system "make", "clean"
    system "make", "nvidia"
    mv "ddcctl", "ddcctl-nvidia"
    bin.install "ddcctl-nvidia"
    system "make", "clean"
    system "make", "intel"
    mv "ddcctl", "ddcctl-intel"
    bin.install "ddcctl-intel"
    system "make", "clean"
    system "make", "amd"
    mv "ddcctl", "ddcctl-amd"
    bin.install "ddcctl-amd"
  end
end
