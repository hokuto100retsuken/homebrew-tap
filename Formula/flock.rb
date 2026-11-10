class Flock < Formula
  desc "Zellij sidebar that shows what each Claude Code agent is doing"
  homepage "https://github.com/hokuto100retsuken/flock"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.1/flock-aarch64-apple-darwin.tar.gz"
      sha256 "39f3ab68fbabe66f7c9c2e2d3400751221aa7ec22c163ba947689832b10bcce7"
    end
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.1/flock-x86_64-apple-darwin.tar.gz"
      sha256 "8facbff445e2b91c0e3d3355a40e23c5ef186d44f0ee8691e5d1d2a2af280044"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.1/flock-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c87c0ec284fcdaef3842c35e7c96796de9677136529ab2c1e78580bf200f947"
    end
  end

  depends_on "zellij"

  def install
    bin.install "flock"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/flock help 2>&1", 1)
  end
end
