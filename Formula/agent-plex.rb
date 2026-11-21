class AgentPlex < Formula
  include Language::Python::Virtualenv

  desc "Chat with Perplexity from your terminal"
  homepage "https://github.com/ManeFunction/agent-plex"
  url "https://files.pythonhosted.org/packages/d8/29/b181e53defd211b0fe91f2022566bbaa12e8b4e691a30d496d18906be1b9/agent_plex-1.0.0.tar.gz"
  sha256 "7eae5a9a791a7b21f2f7eb4dbcb1d54fb657662f87be64c5a228a16afec86c11"
  license "MIT"

  bottle do
    root_url "https://github.com/ManeFunction/homebrew-tap/releases/download/agent-plex-1.0.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6978312b2ee8f64cb5858bb25d337623b43457f19a2c0fc277ef4a3bdb5bab53"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "6d90fb577324eeb20fe9887319c339f8612ad11f1f96bcd57d1e0624cc756102"
  end

  depends_on "pydantic"
  depends_on "python@3.14"

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a1/98/7e457a3b014976887a050561955c0b76e1e7e2d6e27b78ecef2ef80518f2/anyio-4.16.0.tar.gz"
    sha256 "59bb03251907983d1603d27c3087ddb1e93299ea2163adcdba37899a4fb12ffb"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/fd/11/b524cbd9bbdaca58608e4cf4053fd463417549e1959fa8d3aa18319f9555/certifi-2026.10.23.tar.gz"
    sha256 "a9895e6e2758b371e0545e321a3a8fd1fcfd9829ada8824a936dfb16aaaf36cd"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/fc/f8/98eea607f65de6527f8a2e8885fc8015d3e6f5775df186e443e0964a11c3/distro-1.9.0.tar.gz"
    sha256 "2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/58/a2/bb081bab032533a855d44de1d56f8e8426114ff1ba5d1f07a438a0a654f8/idna-3.20-py3-none-any.whl"
    sha256 "ab7ae7122974553370f0bdb919e1a960b2cd1bc1ef0276416d896db81c14582c"
  end

  resource "linkify-it-py" do
    url "https://files.pythonhosted.org/packages/45/98/7a1a5f31fd5c7ba93e963b168e244b8e3dd705b3d2a718e3c3307583bf57/linkify_it_py-2.2.0.tar.gz"
    sha256 "907acd2d17ac1fbb9ddb62c8957ccbd6158cac602231a15c3b0cd1e215f03cee"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/c9/31/5f0ac2f1a1c67423c995c731a11cd4ad05d081a2be969d74f868bdb9cc70/markdown_it_py-4.3.0-py3-none-any.whl"
    sha256 "7aa1511a46c39138de78d9eba92ce47e63124d8003fc98b3a351909e04239efa"
  end

  resource "mdit-py-plugins" do
    url "https://files.pythonhosted.org/packages/4d/d3/d07e61326f150944ead0da9d0b39fb20d7fa367bbc951b10fca6bb1c7382/mdit_py_plugins-0.7.0-py3-none-any.whl"
    sha256 "7f8e30403f3dd8bfe3afcdcbc6e61066d3f2e714167507b9c26eb385ec399353"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "perplexityai" do
    url "https://files.pythonhosted.org/packages/32/b2/14aadf52a2b2b5f1f24883b4a160a125825049eb24b743b6d4a7f9befa6d/perplexityai-0.48.0-py3-none-any.whl"
    sha256 "f134aa1eccbd10af0d2b918dea8404e2081108135a3a7dd105a0b6b7685f3351"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/f8/46/3737af9f971f3934794103256d7f1ed6200a62be0c7b7ff09ac4cf6b3422/platformdirs-4.14.7-py3-none-any.whl"
    sha256 "391513b74707c42335fff3ea17eaac657a7ee9ffcadd809634d34ea594d0122c"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/71/46/17f022dd3e953bf20a04a028a21ec746d942f8d2af30fa0f124fa0e6a684/pygments-2.21.0-py3-none-any.whl"
    sha256 "2363c69b61c4a97c838da3b130dcd6468f4848992b21a82f2a63ec34377137d9"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl"
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "textual" do
    url "https://files.pythonhosted.org/packages/fb/be/35261223d9416a0751cdff1c7b4a6f881387218a12d439fe22fefebc8c04/textual-8.2.8-py3-none-any.whl"
    sha256 "267375fd402dc8d981457212efa71f0e3365fd17bba144ba9bb3ed7563cb374a"
  end

  def install
    virtualenv_install_with_resources using: "python@3.14"

    # pydantic and pydantic-core come from the pydantic formula (built there with Rust)
    site_packages = Language::Python.site_packages("python3.14")
    (libexec/site_packages/"homebrew-pydantic.pth").write formula_opt_prefix("pydantic")/site_packages
  end

  test do
    assert_match "plex v#{version}", shell_output("#{bin}/plex --version")
  end
end
