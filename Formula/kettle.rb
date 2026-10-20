class Kettle < Formula
  include Language::Python::Virtualenv

  desc "Local control of the Xiaomi Smart Kettle 2 Pro"
  homepage "https://github.com/ManeFunction/kettle-x2p-cli"
  url "https://files.pythonhosted.org/packages/58/bd/13731cc1db64aed4d29a55129b7b18b12084242a6395af960dc1e689086b/kettle_x2p_cli-1.2.0.tar.gz"
  sha256 "2a1a0cb46c5d7e17f20bd667b66e9828c452eaa2964a8ae30ef569789f7be369"
  license "MIT"

  bottle do
    root_url "https://github.com/ManeFunction/homebrew-tap/releases/download/kettle-1.1.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1cea5e9526334b3e64b3c0b52dcd653e15d5ad3acfd150ac0319e3ea19d42b2f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "c32179e37f03786e377cf6a42eef2276d44563267c2b666782f44018a1d90340"
  end

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "kettle v#{version}", shell_output("#{bin}/kettle --version")
  end
end
