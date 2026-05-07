class DevcleanCli < Formula
  desc "macOS developer cleanup CLI (safe-first)"
  homepage "https://github.com/wangweicheng7/devclean-cli"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.2/devclean_0.2.2_darwin_arm64.tar.gz"
      sha256 "76226dfae6e7cf15eb4513f6dd81a423cd215f0db887a857549914b3f964529c"
    else
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.2/devclean_0.2.2_darwin_amd64.tar.gz"
      sha256 "1883e3ecde07efca13f1fc9e07105628b65328d4cc6b3b861eebc466cbd95714"
    end
  end

  def install
    bin.install "devclean"
  end

  test do
    system "#{bin}/devclean", "doctor"
  end
end
