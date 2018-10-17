class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  url "https://github.com/guitmz/n26/releases/download/1.4.5/n26-cli-1.4.5-darwin-amd64.zip"
  version "1.4.5"
  sha256 "8593a787b139dae49c306ed31f236dd87b725c07a1811a8c0106c92f0cf4123c"

  def install
    bin.install "n26"
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
