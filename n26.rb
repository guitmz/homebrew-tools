class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  url "https://github.com/guitmz/n26/releases/download/1.4.2/n26-cli-1.4.2-darwin-amd64.zip"
  version "1.4.2"
  sha256 "310a71a43745b1eb36d9b1ff1e54ee9557ad4d3fad23b58e1ded74eb8a2d7069"

  def install
    bin.install "n26"
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
