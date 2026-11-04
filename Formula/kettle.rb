class Kettle < Formula
  include Language::Python::Virtualenv

  desc "Local control of the Xiaomi Smart Kettle 2 Pro"
  homepage "https://github.com/ManeFunction/kettle-x2p-cli"
  url "https://files.pythonhosted.org/packages/fe/ac/61dccc40100332b1657924d953a51c00654a3c763b6ca1ee49fa3017d8a7/kettle_x2p_cli-1.4.0.tar.gz"
  sha256 "6764c24f9c0b6fd78296f2ed853f723ea6dca8b7600d2549063a2d52a81d3ea8"
  license "MIT"

  bottle do
    root_url "https://github.com/ManeFunction/homebrew-tap/releases/download/kettle-1.3.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "31bb8a3e23a37731bdb5af910ed5d7e216722860fe058539c9df688848b7ed39"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "424a85c9c73d0de6cfa7781192925ad73ec8143877583ab38d30627d2ed5cb07"
  end

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "kettle v#{version}", shell_output("#{bin}/kettle --version")
  end
end
