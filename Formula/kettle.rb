class Kettle < Formula
  include Language::Python::Virtualenv

  desc "Local control of the Xiaomi Smart Kettle 2 Pro"
  homepage "https://github.com/ManeFunction/kettle-x2p-cli"
  url "https://files.pythonhosted.org/packages/c2/5b/511279dab0524f9ce3d0dd9d6ece3ff9168b1e29b4428946d7b306df95c3/kettle_x2p_cli-1.0.0.tar.gz"
  sha256 "0c731ee950b5c968a6b629e9f3aa0f7a9f0ccd9139394e981552c15b83ac1f93"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "kettle v#{version}", shell_output("#{bin}/kettle --version")
  end
end
