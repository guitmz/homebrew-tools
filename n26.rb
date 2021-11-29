# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  version "1.5.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/guitmz/n26/releases/download/1.5.4/n26-cli-1.5.4-darwin-amd64.zip"
      sha256 "2f3ef034c3e61f36a51dea54785836cc83242ada8fae746f35402f0af998aca8"

      def install
        bin.install "n26"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/guitmz/n26/releases/download/1.5.4/n26-cli-1.5.4-linux-amd64.zip"
      sha256 "fd859bc37fd1d6591ba0381fd3878dba3099884194a55fe444f59522c0f01cae"

      def install
        bin.install "n26"
      end
    end
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
