class Flipshot < Formula
  include Language::Python::Virtualenv

  desc "Grab a screenshot from a Flipper Zero over USB serial"
  homepage "https://github.com/ManeFunction/flipshot"
  url "https://files.pythonhosted.org/packages/c5/c9/c8dd3357a363cbc7e0d7767878494acd7887279ded238820afbb88afced7/flipshot-1.2.0.tar.gz"
  sha256 "ff4eb307fbc4131fb1a91167e29fc02ac3fcbb8b9d7664e37faee012e6ad388c"
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
