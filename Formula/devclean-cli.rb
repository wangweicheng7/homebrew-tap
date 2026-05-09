class DevcleanCli < Formula
  desc "macOS developer cleanup CLI (safe-first)"
  homepage "https://github.com/wangweicheng7/devclean-cli"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.4.0/devclean_0.4.0_darwin_arm64.tar.gz"
      sha256 "8c7f9ade2c16f8306c36416d49cb9e3e97a12555d038ef34eea211ccfb48b461"
    else
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.4.0/devclean_0.4.0_darwin_amd64.tar.gz"
      sha256 "21177ed40c37f90a4c795f1946f9935fbff10370ddb23b6e20062fd9523a6797"
    end
  end

  def install
    bin.install "devclean"
  end

  test do
    system "#{bin}/devclean", "doctor"
  end
end
