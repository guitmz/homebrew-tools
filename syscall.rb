class Syscall < Formula
  desc "Explore Linux system calls from your terminal"
  homepage "https://github.com/guitmz/syscall"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/guitmz/syscall/releases/download/v0.1.0/syscall_v0.1.0_darwin_arm64.tar.gz"
      sha256 "2f45b14efafeb2fff493f5c16c9db5b73daaeac2284330f8f374c973a08e1848"
    end
    on_intel do
      url "https://github.com/guitmz/syscall/releases/download/v0.1.0/syscall_v0.1.0_darwin_amd64.tar.gz"
      sha256 "ad8c2819131a1ca11f4a05d4ab187fc37b7039777d46b66bc59aa6f099bde2d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guitmz/syscall/releases/download/v0.1.0/syscall_v0.1.0_linux_arm64.tar.gz"
      sha256 "cd94380c665dccd96289659dcb08144042d498272bce33f5198deb659a136491"
    end
    on_intel do
      url "https://github.com/guitmz/syscall/releases/download/v0.1.0/syscall_v0.1.0_linux_amd64.tar.gz"
      sha256 "b97b3820bc0992d3ed924908592833cc589c8bd5436cb13f8ef9c8303bd563b3"
    end
  end

  def install
    bin.install "syscall"
    generate_completions_from_executable(bin/"syscall", "completion")
  end

  test do
    assert_match "memfd_create", shell_output("#{bin}/syscall memfd_create --color never")
  end
end
