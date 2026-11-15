class Syscall < Formula
  desc "Explore Linux system calls from your terminal"
  homepage "https://github.com/guitmz/syscall"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/guitmz/syscall/releases/download/v0.2.0/syscall_v0.2.0_darwin_arm64.tar.gz"
      sha256 "bcdff8a541ada9841989e981498cdb8e2b8101b5ae664a137bb24c97dbb0b2f0"
    end
    on_intel do
      url "https://github.com/guitmz/syscall/releases/download/v0.2.0/syscall_v0.2.0_darwin_amd64.tar.gz"
      sha256 "3100a90153932a34140ee8e3babac13217a2a8ef96ffe16d79dfb7afbdd83918"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guitmz/syscall/releases/download/v0.2.0/syscall_v0.2.0_linux_arm64.tar.gz"
      sha256 "1f14ed38e4455246f71f366f5f668b4a266dd1021939a571165ab28802003dcc"
    end
    on_intel do
      url "https://github.com/guitmz/syscall/releases/download/v0.2.0/syscall_v0.2.0_linux_amd64.tar.gz"
      sha256 "90036629befc6fc5ef5370ba4ab44369381f088a1b11622280647f2d4c402a44"
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
