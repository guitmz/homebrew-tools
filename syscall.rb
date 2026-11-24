class Syscall < Formula
  desc "Explore Linux system calls from your terminal"
  homepage "https://github.com/guitmz/syscall"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/guitmz/syscall/releases/download/v0.2.1/syscall_v0.2.1_darwin_arm64.tar.gz"
      sha256 "c6b3153363c49c5efc6691b8e6339d314d1cceeda001efe7ff936ec600ab4fdb"
    end
    on_intel do
      url "https://github.com/guitmz/syscall/releases/download/v0.2.1/syscall_v0.2.1_darwin_amd64.tar.gz"
      sha256 "4c83ae14c27612cba95e952f414732e78a42431026dc64810d710a5b57886ef7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guitmz/syscall/releases/download/v0.2.1/syscall_v0.2.1_linux_arm64.tar.gz"
      sha256 "d69efc591750bf32ac65f32e2ae080c315a5ec1375780914b82cf2582e15691b"
    end
    on_intel do
      url "https://github.com/guitmz/syscall/releases/download/v0.2.1/syscall_v0.2.1_linux_amd64.tar.gz"
      sha256 "d26f587f036c381a916506090aef59535d5bf0f9e5aa971d5b785b3fa198390b"
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
