class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  url "https://github.com/guitmz/n26/releases/download/1.0.0/n26-cli-1.0.0_darwin_amd64.zip"
  sha256 "de865d194301635abfd93ff126177e2d449316ff031b3ecead564ca6e8c38d77"

  bottle :unneeded

  def install
    bin.install "n26"
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
