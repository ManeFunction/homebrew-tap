class Romlm < Formula
  include Language::Python::Virtualenv

  desc "ROMs library management tool"
  homepage "https://github.com/ManeFunction/romlm"
  url "https://files.pythonhosted.org/packages/33/d7/15ffd1adeecd4ed3b06c81f98aa18a06036afdcaa5079770e3d2c7c003ec/romlm-1.2.0.tar.gz"
  sha256 "4c2fcdad74a66f17ff49ffbee8d86b18989ea430e0faa063fc1948c12efad4ba"
  license "MIT"

  depends_on "python@3.12"
  depends_on "sevenzip"

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/a8/4b/29b4ef32e036bb34e4ab51796dd745cdba7ed47ad142a9f4a1eb8e0c744d/tqdm-4.67.1.tar.gz"
    sha256 "f8aef9c52c08c13a65f30ea34f4e5aac3fd1a34959879d7e59e63027286627f2"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/romlm -v")
    assert_match "ROMs Library Manager v#{version}", output
  end
end
