class Flock < Formula
  desc "Zellij sidebar that shows what each Claude Code agent is doing"
  homepage "https://github.com/hokuto100retsuken/flock"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.2/flock-aarch64-apple-darwin.tar.gz"
      sha256 "94f7c0233904d48c405f56ad3db371e1e40231b71eb0dafcf6ca9e6d8e0a8c26"
    end
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.2/flock-x86_64-apple-darwin.tar.gz"
      sha256 "4e1dbd5413e73b671291ebc13b08d74cb69252614bba74ea1a933552c00a6251"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.2/flock-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23ef7b97c2d478762ae4dc50c3a45fea32b70e9a1c2a051cecdd46d780959f94"
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
