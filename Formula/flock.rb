class Flock < Formula
  desc "Zellij sidebar that shows what each Claude Code agent is doing"
  homepage "https://github.com/hokuto100retsuken/flock"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.3/flock-aarch64-apple-darwin.tar.gz"
      sha256 "154ee593869a13cbd5ab16ba46a7407d9137cfaeaf238cec1b7d62aa17b2ed14"
    end
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.3/flock-x86_64-apple-darwin.tar.gz"
      sha256 "3292558e73dd406d98ccd81e46092802f96fdd588ed495bcf3c88fa06785dfb7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.3/flock-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "855efe5d74657d12a3ad2323c149097abfa24a0c9e94fd2221be20fcad6886b1"
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
