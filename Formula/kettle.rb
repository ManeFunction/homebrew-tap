class Kettle < Formula
  include Language::Python::Virtualenv

  desc "Local control of the Xiaomi Smart Kettle 2 Pro"
  homepage "https://github.com/ManeFunction/kettle-x2p-cli"
  url "https://files.pythonhosted.org/packages/ef/30/9353bb16e7f324fc6d781abf3193c7dbc39e2d6244e81e8a9436b432c1d6/kettle_x2p_cli-1.0.1.tar.gz"
  sha256 "b3fb4b5ae684ec357ceda91788f35e2b74e0c0ebb4809042e35cf6aa2f314f60"
  license "MIT"

  bottle do
    root_url "https://github.com/ManeFunction/homebrew-tap/releases/download/kettle-1.0.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "b533000e9445519e0d2a03c09168794983dc5a006c3f172980d1f48a2f4c0fe0"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "5016b9449ebabf99b1a080e6d1c013e21ac377a011cc643fb17a3a08dc47e5a5"
  end

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "kettle v#{version}", shell_output("#{bin}/kettle --version")
  end
end
