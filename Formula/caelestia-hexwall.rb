class CaelestiaHexwall < Formula
  desc "Animated hexagonal wallpaper for the Caelestia shell"
  homepage "https://github.com/ManeFunction/caelestia-hexwall"
  url "https://github.com/ManeFunction/caelestia-hexwall/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f8d8f17c0bc2fe577e3153563affa7bd58620287699308b7159941644c110982"
  license "MIT"

  bottle do
    root_url "https://github.com/ManeFunction/homebrew-tap/releases/download/caelestia-hexwall-0.9.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "05d5edfe57c62fadb499a1ac6d38fda6c8886c69f75efe1ca56e5fb78e72bbd7"
    sha256 cellar: :any_skip_relocation, sequoia:       "00a3b26dc5459c24f2bd57772a2131079c25ec19aeab355da9b99815900f04a6"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "9dcb29d0698884b6bb439069f5c37021f26c3b142181993d1d5d00347006c18e"
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
