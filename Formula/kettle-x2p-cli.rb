class KettleX2pCli < Formula
  include Language::Python::Virtualenv

  desc "Local control of the Xiaomi Smart Kettle 2 Pro"
  homepage "https://github.com/ManeFunction/kettle-x2p-cli"
  url "https://files.pythonhosted.org/packages/ca/93/f99dd8487c0b81457a4fce5237be57c7bd867a5c24204a3358646811fac7/kettle_x2p_cli-1.4.1.tar.gz"
  sha256 "dabfea4de7031090d36bbf55774acbfde4d66b42cec6a93130ed4b9d9e093176"
  license "MIT"

  bottle do
    root_url "https://github.com/ManeFunction/homebrew-tap/releases/download/kettle-x2p-cli-1.4.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "329df4b0c7cf9310213837871521de454386f3e4fc12d1c8747219653f49ceaf"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "44029f1df6cf5ac0cdb02bea64e46e3f5fa6f91c3bfbfe1fc29722939c25887a"
  end

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "kettle v#{version}", shell_output("#{bin}/kettle --version")
  end
end
