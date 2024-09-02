class Capable < Formula
  desc "Interact with Capacities.io API from your terminal"
  homepage "https://github.com/guitmz/capable"
  url "https://github.com/guitmz/capable/releases/download/0.0.2/capable_0.0.2_darwin_arm64.tar.gz"
  version "0.0.2"
  sha256 "ed117193558ef4c921587afbdabf1761649dd3db166faf5d9eab3216e830b269"

  def install
    bin.install "capable"
  end

  test do
    system "#{bin}/capable", "--version"
  end
end
