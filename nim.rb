require 'formula'

class Nim < Formula
  homepage "http://nim-lang.org/"

  url "http://nim-lang.org/download/nim-0.10.2.zip"
  sha1 '2fdd486704931807d03d25d6846c5faee880d69e'
  version "0.10.2"

  def install
    system "/bin/sh", "build.sh"
    system "/bin/sh", "install.sh", prefix
    (prefix/"nim").install "compiler"
    bin.install_symlink prefix/"nim/bin/nim"
  end
end
