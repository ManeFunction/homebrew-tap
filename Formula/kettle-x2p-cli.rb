class KettleX2pCli < Formula
  include Language::Python::Virtualenv

  desc "Local control of the Xiaomi Smart Kettle 2 Pro"
  homepage "https://github.com/ManeFunction/kettle-x2p-cli"
  url "https://files.pythonhosted.org/packages/fe/ac/61dccc40100332b1657924d953a51c00654a3c763b6ca1ee49fa3017d8a7/kettle_x2p_cli-1.4.0.tar.gz"
  sha256 "6764c24f9c0b6fd78296f2ed853f723ea6dca8b7600d2549063a2d52a81d3ea8"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "kettle v#{version}", shell_output("#{bin}/kettle --version")
  end
end
