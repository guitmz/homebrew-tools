class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  url "https://github.com/guitmz/n26/releases/download/1.2.0/n26-cli-1.2.0-darwin-amd64.zip"
  sha256 "fe6fbab9f6100b80dae41f11c8c31f0324b2d07da48b7ee6e86319cd0640da71"

  bottle :unneeded

  def install
    bin.install "n26"
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
