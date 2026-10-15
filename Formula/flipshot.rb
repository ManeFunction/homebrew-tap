class Flipshot < Formula
  include Language::Python::Virtualenv

  desc "Grab a screenshot from a Flipper Zero over USB serial"
  homepage "https://github.com/ManeFunction/flipshot"
  url "https://files.pythonhosted.org/packages/31/99/67e421773f6c08cd7d863c4bd5bd4a0651b172967b7874f6850ab8383976/flipshot-1.4.0.tar.gz"
  sha256 "333adefcf94440d69f7333c791d01c52db943e0bb81ef89b4a9cb64186dc66ba"
  license "MIT"

  bottle do
    root_url "https://github.com/ManeFunction/homebrew-tap/releases/download/flipshot-1.4.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f71ee0c86e22fcccbfada8454b0a8464e648819402659729ab638c4eed3fd44e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "152796163c3aa5b9398b94623e0378cb2bdc07732ef2f79cb165a8479597b4bf"
  end

  depends_on "python@3.12"

  resource "pyserial" do
    url "https://files.pythonhosted.org/packages/1e/7d/ae3f0a63f41e4d2f6cb66a5b57197850f919f59e558159a4dd3a818f5082/pyserial-3.5.tar.gz"
    sha256 "3c77e014170dfffbd816e6ffc205e9842efb10be9f58ec16d3e8675b4925cddb"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"flipshot", "--version"
  end
end
