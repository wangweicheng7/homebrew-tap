class DevcleanCli < Formula
  desc "macOS developer cleanup CLI (safe-first)"
  homepage "https://github.com/wangweicheng7/devclean-cli"
  version "0.2.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.8/devclean_0.2.8_darwin_arm64.tar.gz"
      sha256 "2e7ec08ae52e38fd8583c709c1e828517d78c3a6f7b3699c57d80bcb513877e5"
    else
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.8/devclean_0.2.8_darwin_amd64.tar.gz"
      sha256 "f2bae7ba7562b5df44d8b2716e58526fa98727f2eb379919fec8ce6d100c0ab9"
    end
  end

  def install
    bin.install "devclean"
  end

  test do
    system "#{bin}/devclean", "doctor"
  end
end
