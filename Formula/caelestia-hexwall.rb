class CaelestiaHexwall < Formula
  desc "Animated hexagonal wallpaper for the Caelestia shell"
  homepage "https://github.com/ManeFunction/caelestia-hexwall"
  url "https://github.com/ManeFunction/caelestia-hexwall/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "e214e6bc0b2346fb158f6aad1a75703775083fbd2719af2d3b0b4d38df0d6975"
  license "MIT"

  bottle do
    root_url "https://github.com/ManeFunction/homebrew-tap/releases/download/caelestia-hexwall-1.0.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e99630ce1967a2be7d53d2192ab7bd4a75f74ce44d94e2f8e586eb4417cde801"
    sha256 cellar: :any_skip_relocation, sequoia:       "90548ad343e1b59aac264aab1e32f700ef7c9ac6c11dffe39d42149bd8c2c1f4"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e85daefcd100c9ff15b3dc749ac7b6be68cce7e788ca11b15bd6c503007cd707"
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
