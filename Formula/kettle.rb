class Kettle < Formula
  include Language::Python::Virtualenv

  desc "Local control of the Xiaomi Smart Kettle 2 Pro"
  homepage "https://github.com/ManeFunction/kettle-x2p-cli"
  url "https://files.pythonhosted.org/packages/26/78/b979888af58fac40282ce47effb9b48544d8afc0a2b13fe94486dbe6b940/kettle_x2p_cli-1.3.0.tar.gz"
  sha256 "eca3df87574d056a61af58ccbb4fdf6f4ab5d4e8215541979e5ff6484bab08c6"
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
