class Flock < Formula
  desc "Zellij sidebar that shows what each Claude Code agent is doing"
  homepage "https://github.com/hokuto100retsuken/flock"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.9/flock-aarch64-apple-darwin.tar.gz"
      sha256 "322644274a11864f55a2186cd6f75e9cab318f94cb3b242f0b93f0e78d80094e"
    end
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.9/flock-x86_64-apple-darwin.tar.gz"
      sha256 "4d88f543e592d0e371162e8ec3ee4ba8b5b657030791b7445b6e29411aca0f2f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.9/flock-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a5b90265a11be0ba7674d825d118f37a59f7645d5de04e966cf6a9540a7f1bd"
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
