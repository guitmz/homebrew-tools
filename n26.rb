class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  url "https://github.com/guitmz/n26/releases/download/1.3.0/n26-cli-1.3.0-darwin-amd64.zip"
  sha256 "a5e987f4ee0740a2638bbe426fc1bf7f8eb1fd2a6af913b21b67386dccbf318d"

  bottle :unneeded

  def install
    bin.install "n26"
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
