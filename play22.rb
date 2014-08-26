require "formula"

class Play22 < Formula
  homepage "http://www.playframework.org/"
  url "http://downloads.typesafe.com/play/2.2.2/play-2.2.2.zip"
  sha1 "9a2fa3c6b9ee36375d814d775bec4335e427dcd2"

  conflicts_with "sox", :because => "both install `play` binaries"

  def install
    rm_rf Dir["**/*.bat"]
    libexec.install Dir["*"]
    bin.install_symlink libexec/"play"
  end
end
