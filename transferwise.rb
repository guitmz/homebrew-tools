class Transferwise < Formula
  desc "A transferwise command line tool"
  homepage "https://github.com/guitmz/transferwise"
  url "https://github.com/guitmz/transferwise/releases/download/1.0.0/transferwise-cli-1.0.0-darwin-amd64.zip"
  version "1.0.0"
  sha256 "d9c7ed913821e546839ebcfc40e809b654b23a1c271d240dbc9f342fd3fabc64"

  def install
    bin.install "transferwise"
  end

  test do
    system "#{bin}/transferwise", "--version"
  end
end
