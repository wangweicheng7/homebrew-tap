class DevcleanCli < Formula
  desc "macOS developer cleanup CLI (safe-first)"
  homepage "https://github.com/wangweicheng7/devclean-cli"
  version "0.2.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.9/devclean_0.2.9_darwin_arm64.tar.gz"
      sha256 "88fd414134baf242b1c86e58382dd50396a71d260cfc4f931bce42212f2e66e2"
    else
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.9/devclean_0.2.9_darwin_amd64.tar.gz"
      sha256 "6ad07f14033787c507df1e3d7a240d2cae4ddb0090aa2c83d557f3f68c8b8d7b"
    end
  end

  def install
    bin.install "devclean"
  end

  test do
    system "#{bin}/devclean", "doctor"
  end
end
