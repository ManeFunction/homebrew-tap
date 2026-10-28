class Kettle < Formula
  include Language::Python::Virtualenv

  desc "Local control of the Xiaomi Smart Kettle 2 Pro"
  homepage "https://github.com/ManeFunction/kettle-x2p-cli"
  url "https://files.pythonhosted.org/packages/a2/35/3bd8b6aa3d3588166b5b2ad3f84bbedcc6298639d74c2e57351773700744/kettle_x2p_cli-1.3.1.tar.gz"
  sha256 "4aecf9c785e4904c61f5e2dd613dd75afb0888b5a6ffa922484234f86e540b8e"
  license "MIT"

  bottle do
    root_url "https://github.com/ManeFunction/homebrew-tap/releases/download/kettle-1.3.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a99021ba0cdd85c6df92241e3b551379eac7ab1cba4dd77dd9032a244f959186"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "f3b09d9ea38910fd6a3ea0c61526f1a18522e7ab48ad11d838dd36cf8a4216af"
  end

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "kettle v#{version}", shell_output("#{bin}/kettle --version")
  end
end
