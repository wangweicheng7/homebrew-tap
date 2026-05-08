class DevcleanCli < Formula
  desc "macOS developer cleanup CLI (safe-first)"
  homepage "https://github.com/wangweicheng7/devclean-cli"
  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.7/devclean_0.2.7_darwin_arm64.tar.gz"
      sha256 "004a57a72b996b8effa5c05e6cfd09092b352444bcee4e7bd3c3ee7f72eee32d"
    else
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.7/devclean_0.2.7_darwin_amd64.tar.gz"
      sha256 "98bcbb1f8565eb7212011312bb05fa71e6f735d8531b456e770b2d39b7d81184"
    end
  end

  def install
    bin.install "devclean"
  end

  test do
    system "#{bin}/devclean", "doctor"
  end
end
