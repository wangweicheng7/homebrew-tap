class DevcleanCli < Formula
  desc "macOS developer cleanup CLI (safe-first)"
  homepage "https://github.com/wangweicheng7/devclean-cli"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.3.0/devclean_0.3.0_darwin_arm64.tar.gz"
      sha256 "106aaf2587801fc52db834692bd893b936a1c42526a0e1cc5df3e8222d484e12"
    else
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.3.0/devclean_0.3.0_darwin_amd64.tar.gz"
      sha256 "69e9742bc4c4649e1f844fed8520652e4bf15e74b0c78204ec023b743ffd9fbb"
    end
  end

  def install
    bin.install "devclean"
  end

  test do
    system "#{bin}/devclean", "doctor"
  end
end
