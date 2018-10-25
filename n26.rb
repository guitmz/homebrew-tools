class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  url "https://github.com/guitmz/n26/releases/download/1.4.6/n26-cli-1.4.6-darwin-amd64.zip"
  version "1.4.6"
  sha256 "082e8adff06ff731ce3b5a93a150b531d2ae0a62012d94dd96c9754ac0bcc8a7"

  def install
    bin.install "n26"
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
