class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  url "https://github.com/guitmz/n26/releases/download/1.4.1/n26-cli-1.4.1-darwin-amd64.zip"
  sha256 "a483f572537b1cc4ab7a10228549c9139794f1dc2f9f64439809ce125b11aef4"

  bottle :unneeded

  def install
    bin.install "n26"
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
