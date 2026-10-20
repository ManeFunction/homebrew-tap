class Kettle < Formula
  include Language::Python::Virtualenv

  desc "Local control of the Xiaomi Smart Kettle 2 Pro"
  homepage "https://github.com/ManeFunction/kettle-x2p-cli"
  url "https://files.pythonhosted.org/packages/58/bd/13731cc1db64aed4d29a55129b7b18b12084242a6395af960dc1e689086b/kettle_x2p_cli-1.2.0.tar.gz"
  sha256 "2a1a0cb46c5d7e17f20bd667b66e9828c452eaa2964a8ae30ef569789f7be369"
  license "MIT"

  bottle do
    root_url "https://github.com/ManeFunction/homebrew-tap/releases/download/kettle-1.2.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "2e6b7634908eac5294fcd4d8a98403c2c0b9df497e81bdf909ecef7a2a8b47df"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "0cf0e8ad86bc3bb0e542849bc51663788085efffb797fe90d2720e3ce0574815"
  end

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "kettle v#{version}", shell_output("#{bin}/kettle --version")
  end
end
