class DevcleanCli < Formula
  desc "macOS developer cleanup CLI (safe-first)"
  homepage "https://github.com/wangweicheng7/devclean-cli"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.5/devclean_0.2.5_darwin_arm64.tar.gz"
      sha256 "05843f18e814e1925da27360cfda85679e5fb95f3b5527515cb5d6025b6ed59f"
    else
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.5/devclean_0.2.5_darwin_amd64.tar.gz"
      sha256 "a6540faacb44d2430a3e710f90fe657c3bca1cc4eb9bf3d74ef535a4f84e3de4"
    end
  end

  def install
    bin.install "devclean"
  end

  test do
    system "#{bin}/devclean", "doctor"
  end
end
