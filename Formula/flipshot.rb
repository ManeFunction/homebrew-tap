class Flipshot < Formula
  include Language::Python::Virtualenv

  desc "Grab a screenshot from a Flipper Zero over USB serial"
  homepage "https://github.com/ManeFunction/flipshot"
  url "https://files.pythonhosted.org/packages/84/3e/b812631b195d95b2f8e0e0cf8149726a5a60ec43a43100eabc1db32906c9/flipshot-1.0.0.tar.gz"
  sha256 "ff2e0844a82dec17cf7b8cd937fce5b1ac80fad11d286f5083f32654d840eb7e"
  license "MIT"

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
