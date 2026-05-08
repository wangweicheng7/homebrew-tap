class DevcleanCli < Formula
  desc "macOS developer cleanup CLI (safe-first)"
  homepage "https://github.com/wangweicheng7/devclean-cli"
  version "0.2.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.6/devclean_0.2.6_darwin_arm64.tar.gz"
      sha256 "39271f19c054f21ce38da162a19943dce6981f09d05b3880833d4ce40ecd9e65"
    else
      url "https://github.com/wangweicheng7/devclean-cli/releases/download/v0.2.6/devclean_0.2.6_darwin_amd64.tar.gz"
      sha256 "40e77faf7870e9dddeec148d0d4f9c4c8b4100b859f0bab6120832ea7876a85f"
    end
  end

  def install
    bin.install "devclean"
  end

  test do
    system "#{bin}/devclean", "doctor"
  end
end
