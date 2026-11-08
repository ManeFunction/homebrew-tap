class CaelestiaHexwall < Formula
  desc "Animated hexagonal wallpaper for the Caelestia shell"
  homepage "https://github.com/ManeFunction/caelestia-hexwall"
  url "https://github.com/ManeFunction/caelestia-hexwall/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "fcdbba0f95cb489b4b38a0be019d5866ad6eb84f3366bd1e6d5604b8e6b1dbf9"
  license "MIT"

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
