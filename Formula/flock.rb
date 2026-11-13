class Flock < Formula
  desc "Zellij sidebar that shows what each Claude Code agent is doing"
  homepage "https://github.com/hokuto100retsuken/flock"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.11/flock-aarch64-apple-darwin.tar.gz"
      sha256 "5eae8c597a32d0cbeedfc529e436f9f9a1938e4b470232b559b1f251bd75c3c9"
    end
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.11/flock-x86_64-apple-darwin.tar.gz"
      sha256 "c2889eea94c61c9b25e13ea61f107aeff0b3cc26953676c0260ef16512fef4c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hokuto100retsuken/flock/releases/download/v0.1.11/flock-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e9a799d598b6cad0fb91765a49f741d771238eb70deb63b3ef5106f4c21868d"
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
