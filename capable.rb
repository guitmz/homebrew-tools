class Capable < Formula
  desc "Interact with Capacities.io API from your terminal"
  homepage "https://github.com/guitmz/capable"
  url "https://github.com/guitmz/capable/releases/download/0.0.3/capable_0.0.3_darwin_arm64.tar.gz"
  version "0.0.3"
  sha256 "d89b33ec123f434207e2f8253df3762937f8765a18b5099e5b8e54e940358398"

  def install
    bin.install "capable"
  end

  test do
    system "#{bin}/capable", "--version"
  end
end
