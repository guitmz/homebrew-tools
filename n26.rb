class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  url "https://github.com/guitmz/n26/releases/download/1.1.0/n26-cli-1.1.0-darwin-amd64.zip"
  sha256 "5ebfeab28a2dbc86840dc44f4dd07236ea791e71204093d5d7954c9e26d7e8f1"

  bottle :unneeded

  def install
    bin.install "n26"
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
