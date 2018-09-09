class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  url "https://github.com/guitmz/n26/releases/download/1.4.4/n26-cli-1.4.4-darwin-amd64.zip"
  version "1.4.4"
  sha256 "545034820e48d9ff5b4f6c20636d3d69ddb894ec874a48ea9b4a1362f0698c71"

  def install
    bin.install "n26"
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
