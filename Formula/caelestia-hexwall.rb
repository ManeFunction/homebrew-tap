class CaelestiaHexwall < Formula
  desc "Animated hexagonal wallpaper for the Caelestia shell"
  homepage "https://github.com/ManeFunction/caelestia-hexwall"
  url "https://github.com/ManeFunction/caelestia-hexwall/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "96008a6c64016fea6e11acbc4557164409f39508034e29a3e4361d78bf0362f4"
  license "MIT"

  bottle do
    root_url "https://github.com/ManeFunction/homebrew-tap/releases/download/caelestia-hexwall-1.1.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "bb43cb4ed97a3f6767d07d865122e19c92c1c86108952a29adacd653f182fdf2"
    sha256 cellar: :any_skip_relocation, sequoia:       "5ebdb36ddc929f6ae32506a32dff4f1297ebdff11cd1293da2f38c80c1aee9df"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "77d676af0c465b47555c694d3d6a6b872818acc7c1da84ba8df3383a32ca833f"
  end

  def install
    bin.install "bin/hexwall"
    pkgshare.install Dir["share/caelestia-hexwall/*"]
  end

  def caveats
    <<~EOS
      Add the wallpaper to your Caelestia shell with:
        hexwall activate
      Remove it before uninstalling this formula:
        hexwall deactivate
    EOS
  end

  test do
    assert_match "hexwall", shell_output("#{bin}/hexwall --version")
  end
end
