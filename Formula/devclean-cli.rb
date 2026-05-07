class DevcleanCli < Formula
  desc "macOS developer cleanup CLI (safe-first)"
  homepage "https://github.com/wangweicheng7/devclean-cli"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.3/devclean_0.2.3_darwin_arm64.tar.gz"
      sha256 "4fd52b930b72f80f25cbe0efc970bcdadfeb5fd77439c5bcad6a40a6acea5c1a"
    else
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.3/devclean_0.2.3_darwin_amd64.tar.gz"
      sha256 "5f02bedb88370b196ba2024c39395aa6afd14d05ab3876076b869ae13364e321"
    end
  end

  def install
    bin.install "devclean"
  end

  test do
    system "#{bin}/devclean", "doctor"
  end
end
