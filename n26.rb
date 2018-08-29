class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  url "https://github.com/guitmz/n26/releases/download/1.4.3/n26-cli-1.4.3-darwin-amd64.zip"
  version "1.4.3"
  sha256 "39f7211bfb91650e2cc4365c174a6319df9cecc2bb9b192a295a604e45a71e32"

  def install
    bin.install "n26"
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
