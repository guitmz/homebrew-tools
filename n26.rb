class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  url "https://github.com/guitmz/n26/releases/download/1.4.7/n26-cli-1.4.7-darwin-amd64.zip"
  version "1.4.7"
  sha256 "1c1d09138d4328fef22392fd400eed8eaedb81b4b1acd62eeb3366c49561dc03"

  def install
    bin.install "n26"
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
