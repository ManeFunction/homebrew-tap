class Kettle < Formula
  include Language::Python::Virtualenv

  desc "Local control of the Xiaomi Smart Kettle 2 Pro"
  homepage "https://github.com/ManeFunction/kettle-x2p-cli"
  url "https://files.pythonhosted.org/packages/ce/00/596532a9c0d8215fa9efed34d28e395193fd59018e7d56f1992bd771f7c9/kettle_x2p_cli-1.1.0.tar.gz"
  sha256 "a1e8e9eae2feb87a63dc0524a279a43ed3f0a6c6f6e4aebd8af921500aaa4cf0"
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
