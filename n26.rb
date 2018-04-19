class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  url "https://github.com/guitmz/n26/releases/download/1.4.0/n26-cli-1.4.0-darwin-amd64.zip"
  sha256 "1d910b0cd01e770f3ba53086e3134c35efe9e4c47f6d8849c380195909e2da2b"

  bottle :unneeded

  def install
    bin.install "n26"
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
