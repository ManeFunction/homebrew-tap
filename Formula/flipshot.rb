class Flipshot < Formula
  include Language::Python::Virtualenv

  desc "Grab a screenshot from a Flipper Zero over USB serial"
  homepage "https://github.com/ManeFunction/flipshot"
  url "https://files.pythonhosted.org/packages/3f/6a/dd6d66f7089b228bd7e92882f1e6869c8f646470a416fde469ef9bd30c65/flipshot-1.3.0.tar.gz"
  sha256 "e7aca4c02b7e5dd00578c9101d964110ffe2a85d4b172045eb23d8a5b77b8355"
  license "MIT"

  bottle do
    root_url "https://github.com/ManeFunction/homebrew-tap/releases/download/flipshot-1.2.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "876c49c7595454b76cc512b9bf49e92a62f09c77af4e701c274c0e69d21e9ece"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "dc56d1f0f36e44c190eafd131b38431af1b3150d7a932aefb0363f9ef4536be7"
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
