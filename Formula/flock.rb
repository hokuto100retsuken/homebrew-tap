class Flock < Formula
  desc "Zellij sidebar that shows what each Claude Code agent is doing"
  homepage "https://github.com/hokuto100retsuken/flock"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.5/flock-aarch64-apple-darwin.tar.gz"
      sha256 "bbc86d3218a92880755be0c2a95edbdd273911a829405d1c1d449afdd5f713b4"
    end
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.5/flock-x86_64-apple-darwin.tar.gz"
      sha256 "3395e569969b882bb51e4e15c501f2a24abaf2e79efa77695132e1bd11db05ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.5/flock-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3204a492fed2f310322824da7dfd3e2a5eb9313fa2f572ecac8cc604f4a9338"
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
