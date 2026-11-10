class Flock < Formula
  desc "Zellij sidebar that shows what each Claude Code agent is doing"
  homepage "https://github.com/hokuto100retsuken/flock"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.7/flock-aarch64-apple-darwin.tar.gz"
      sha256 "15615cb61081dc5e50d216199dc91790f87f27bd6ad2fbbd3d497a61d4d99e91"
    end
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.7/flock-x86_64-apple-darwin.tar.gz"
      sha256 "06da1420f04ceffddcadd974f3ca221fa6dd261e83e9f7a1be34e671cb1cf23d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.7/flock-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da3c9feda61c773cc7b94662071501492b8e5606550dd55018975a15f1ac7aff"
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
