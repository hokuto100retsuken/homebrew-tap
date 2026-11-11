class Flock < Formula
  desc "Zellij sidebar that shows what each Claude Code agent is doing"
  homepage "https://github.com/hokuto100retsuken/flock"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.8/flock-aarch64-apple-darwin.tar.gz"
      sha256 "0f11e0c520fbd2d64563483c35695c0862b458dbd0439d51185a6bede08c04d0"
    end
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.8/flock-x86_64-apple-darwin.tar.gz"
      sha256 "1a9efa72013afec71dfa278ee2bef84b675afa53fb8eac024049ef54702b51a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.8/flock-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "54f324a03f0dfa14ad1ed3672aa4cce7fb006bb1bd35608c1a2e7bcc4ba25589"
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
