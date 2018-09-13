class Transferwise < Formula
  desc "A transferwise command line tool"
  homepage "https://github.com/guitmz/transferwise"
  url "https://github.com/guitmz/transferwise/releases/download/1.0.1/transferwise-cli-1.0.1-darwin-amd64.zip"
  version "1.0.1"
  sha256 "33183867205bb038e65fd9ee0c32241a10f6a748b6bc8c99307d4c9446114854"

  def install
    bin.install "transferwise"
  end

  test do
    system "#{bin}/transferwise", "--version"
  end
end
