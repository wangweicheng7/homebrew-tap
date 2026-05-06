class Cleandev < Formula
  desc "macOS developer cleanup CLI (safe-first)"
  homepage "https://github.com/wangweicheng7/cleandev-cli"
  version "0.0.0"

  # Current default: build from GitHub main tarball.
  # For releases, update url/sha256/version to the corresponding tag tarball.
  url "https://github.com/wangweicheng7/cleandev-cli/archive/refs/heads/main.tar.gz"
  sha256 "7cbafb506cdc061331ea3dd30300a494a4d6a956617d076ce65a317c74d3dae9"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"cleandev"), "./cmd/cleandev"
  end

  test do
    system "#{bin}/cleandev", "doctor"
  end
end

