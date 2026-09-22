class Romlm < Formula
  include Language::Python::Virtualenv

  desc "ROMs library management tool"
  homepage "https://github.com/ManeFunction/romlm"
  url "https://files.pythonhosted.org/packages/0b/70/2c0efde610f0881a80a3a200d043798e4a58f795cc396c240429cb7cc43f/romlm-1.1.0.tar.gz"
  sha256 "80607b5442918067b3e17aa735bd1effc7887519dd6cf0915858e26ca8ddea3d"
  license "MIT"

  depends_on "sevenzip"
  depends_on "python@3.12"

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d1/d6/3965ed04c63042e047cb6a3e6ed1a63a35087b6a609aa3a15ed8ac56c221/colorama-0.4.6-py2.py3-none-any.whl"
    sha256 "4f1d9991f5acc0ca119f9d443620b77f9d6b33703e51011c16baf57afb285fc6"
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
