# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class N26 < Formula
  desc "CLI tool for N26 Bank"
  homepage "https://github.com/guitmz/n26"
  version "1.5.6"

  on_macos do
    url "https://github.com/guitmz/n26/releases/download/1.5.6/n26-cli-1.5.6-darwin-amd64.zip"
    sha256 "01bb020396a441cb1aa1a713cd7a3674b2db5498fb2b2550ea765e001755aca1"

    def install
      bin.install "n26"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the N26
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/guitmz/n26/releases/download/1.5.6/n26-cli-1.5.6-linux-amd64.zip"
      sha256 "455cfb7a7cb07d0fb92ccdf148cf1226bed9cb9b081b882e2268ee1d70b1cfc1"

      def install
        bin.install "n26"
      end
    end
  end

  test do
    system "#{bin}/n26", "--version"
  end
end
