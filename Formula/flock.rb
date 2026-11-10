class Flock < Formula
  desc "Zellij sidebar that shows what each Claude Code agent is doing"
  homepage "https://github.com/hokuto100retsuken/flock"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.4/flock-aarch64-apple-darwin.tar.gz"
      sha256 "f893787a898b330ae6b112d1752efa82dd2508a5b7924b415707de688ad57523"
    end
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.4/flock-x86_64-apple-darwin.tar.gz"
      sha256 "141d8faaada6526a047d565d77716577ff5367c4263669f2d41923d3b030ce1e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.4/flock-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f23ef1db106424563e663b25519235d857c571a7056c1004420005c551ea7a6"
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
