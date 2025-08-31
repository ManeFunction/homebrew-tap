class Romlm < Formula
  desc "ROMs library management tool"
  homepage "https://github.com/ManeFunction/romlm"
  url "https://github.com/ManeFunction/romlm/releases/download/v1.0.3/romlm-1.0.3.tar.gz"
  sha256 "614e0b117edca8cf5840966a91ccb1e8874b51ecda98698c66856171113ef2fb"
  license "MIT"

  depends_on "python@3.12"

  def install
    system "python3.12", "-m", "venv", "--clear", "--copies", libexec.to_s
    system "#{libexec}/bin/python", "-m", "ensurepip"
    system "#{libexec}/bin/pip", "install", "--upgrade", "pip", "setuptools", "wheel"
    system "#{libexec}/bin/pip", "install", "."
    bin.install_symlink "#{libexec}/bin/romlm" => "romlm"
  end

  test do
    output = shell_output("#{bin}/romlm -v")
    assert_match "ROMs Library Manager v#{version}", output
  end
end
