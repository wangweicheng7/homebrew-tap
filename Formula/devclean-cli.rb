class DevcleanCli < Formula
  desc "macOS developer cleanup CLI (safe-first)"
  homepage "https://github.com/wangweicheng7/devclean-cli"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.4/devclean_0.2.4_darwin_arm64.tar.gz"
      sha256 "045d75c20d84e4a69c98221dc6035c211cdad7cc7f4b27c47b08172c2fa051ff"
    else
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.4/devclean_0.2.4_darwin_amd64.tar.gz"
      sha256 "550edbb656b81c2c840a25bcb08e6c82e3cc56d4c20f3495824690492d4c9169"
    end
  end

  def install
    bin.install "devclean"
  end

  test do
    system "#{bin}/devclean", "doctor"
  end
end
