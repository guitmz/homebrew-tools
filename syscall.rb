class Syscall < Formula
  desc "Explore Linux system calls from your terminal"
  homepage "https://github.com/guitmz/syscall"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/guitmz/syscall/releases/download/v0.2.2/syscall_v0.2.2_darwin_arm64.tar.gz"
      sha256 "041994faf26b1f1056791586b71e15794a0a74d6abe2da50df124f02e6a23e1a"
    end
    on_intel do
      url "https://github.com/guitmz/syscall/releases/download/v0.2.2/syscall_v0.2.2_darwin_amd64.tar.gz"
      sha256 "5f9a3078b895fe88cef067431ea7b7b8f1dd53db1dbd9f29037a10cce096674a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guitmz/syscall/releases/download/v0.2.2/syscall_v0.2.2_linux_arm64.tar.gz"
      sha256 "2897c77c6b79fa3c24944e8fc28e530e1974372014ddc4c15632a157cda058f2"
    end
    on_intel do
      url "https://github.com/guitmz/syscall/releases/download/v0.2.2/syscall_v0.2.2_linux_amd64.tar.gz"
      sha256 "74b8f86337ca2111176287f8fcc7ca5c19b571f22904500ff59a335884514168"
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
