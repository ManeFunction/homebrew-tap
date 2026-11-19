class CaelestiaHexwall < Formula
  desc "Animated hexagonal wallpaper for the Caelestia shell"
  homepage "https://github.com/ManeFunction/caelestia-hexwall"
  url "https://github.com/ManeFunction/caelestia-hexwall/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f8d8f17c0bc2fe577e3153563affa7bd58620287699308b7159941644c110982"
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
