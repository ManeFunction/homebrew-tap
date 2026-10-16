class Kettle < Formula
  include Language::Python::Virtualenv

  desc "Local control of the Xiaomi Smart Kettle 2 Pro"
  homepage "https://github.com/ManeFunction/kettle-x2p-cli"
  url "https://files.pythonhosted.org/packages/c2/5b/511279dab0524f9ce3d0dd9d6ece3ff9168b1e29b4428946d7b306df95c3/kettle_x2p_cli-1.0.0.tar.gz"
  sha256 "0c731ee950b5c968a6b629e9f3aa0f7a9f0ccd9139394e981552c15b83ac1f93"
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
