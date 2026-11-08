class Kettle < Formula
  include Language::Python::Virtualenv

  desc "Local control of the Xiaomi Smart Kettle 2 Pro"
  homepage "https://github.com/ManeFunction/kettle-x2p-cli"
  url "https://files.pythonhosted.org/packages/fe/ac/61dccc40100332b1657924d953a51c00654a3c763b6ca1ee49fa3017d8a7/kettle_x2p_cli-1.4.0.tar.gz"
  sha256 "6764c24f9c0b6fd78296f2ed853f723ea6dca8b7600d2549063a2d52a81d3ea8"
  license "MIT"

  bottle do
    root_url "https://github.com/ManeFunction/homebrew-tap/releases/download/kettle-1.4.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "9430b7ccbeb6b0b5c961588ab053bf72f9e5950a3d1c8832cc16cd82a8669d1e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "b0c59e0a81dddb751c1e5a9cf18735ed0a1368e45b04373f66bb796f159afed0"
  end

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "kettle v#{version}", shell_output("#{bin}/kettle --version")
  end
end
