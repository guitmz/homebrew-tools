class Transferwise < Formula
  desc "A transferwise command line tool"
  homepage "https://github.com/guitmz/transferwise"
  url "https://github.com/guitmz/transferwise/releases/download/1.0.2/transferwise-cli-1.0.2-darwin-amd64.zip"
  version "1.0.2"
  sha256 "837baec729a3fdf27acae4f6399e17a01f9166e2dd0fe27875e9f6c464d91df9"

  def install
    bin.install "transferwise"
  end

  test do
    system "#{bin}/transferwise", "--version"
  end
end
