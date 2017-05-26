class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  url "https://github.com/guitmz/n26/releases/download/1.1.0/n26-cli-1.1.0-darwin-amd64.zip"
  sha256 "b4c42c16e3c978d54a914849ffb8912da271d6d8803aae63d011c8fd09a25102"

  bottle :unneeded

  def install
    bin.install "n26"
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
