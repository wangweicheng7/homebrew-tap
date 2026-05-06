class DevcleanCli < Formula
  desc "macOS developer cleanup CLI (safe-first)"
  homepage "https://github.com/wangweicheng7/devclean-cli"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.1/devclean_0.2.1_darwin_arm64.tar.gz"
      sha256 "46ab10dff6679dc60be82c03327ff22f37cee87df5d55995eeef9c2a3a527264"
    else
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.1/devclean_0.2.1_darwin_amd64.tar.gz"
      sha256 "81106ba215fdf186b2a03ab5bbe60d19e3ef7f5985ef6aa916c2164497daa6a7"
    end
  end

  def install
    bin.install "devclean"
  end

  test do
    system "#{bin}/devclean", "doctor"
  end
end
