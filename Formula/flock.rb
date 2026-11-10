class Flock < Formula
  desc "Zellij sidebar that shows what each Claude Code agent is doing"
  homepage "https://github.com/hokuto100retsuken/flock"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.6/flock-aarch64-apple-darwin.tar.gz"
      sha256 "32fc54e89982ca53fee4e9df5a0266c1e03c86cd84342c1b2201fee48de84efb"
    end
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.6/flock-x86_64-apple-darwin.tar.gz"
      sha256 "e0dcaa8e442f8e62ea7d08f79cc050c6d51c3c80ed5bb505c7c5f0b43c31728f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.6/flock-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76684a6b2a182e664777a0dbc9bf7ec78ccb0603cc90c01992fffc6b93e34d26"
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
