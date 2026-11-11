class Flock < Formula
  desc "Zellij sidebar that shows what each Claude Code agent is doing"
  homepage "https://github.com/hokuto100retsuken/flock"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.10/flock-aarch64-apple-darwin.tar.gz"
      sha256 "111f1db635c14f079baf6739f31ecaebc11df223d88aa0637a0007ef016a6ed9"
    end
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.10/flock-x86_64-apple-darwin.tar.gz"
      sha256 "75b71d8fc1edb463505d1f9c990c447e150bae85e245fc28730e65e8f7b8313a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.10/flock-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed2b8bfa7f08d5c3f7c2f1d36f55d20905ce82dbfb9fcf242460c0cd6ac1c363"
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
