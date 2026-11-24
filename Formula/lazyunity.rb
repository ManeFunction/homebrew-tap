class Lazyunity < Formula
  desc "CLI for Unity projects and Editors, built on Unity CLI, inspired by lazygit"
  homepage "https://github.com/ManeFunction/lazyunity"
  url "https://github.com/ManeFunction/lazyunity/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7cd1fc1d11f7173d96cab9c55c8f5d99552572edc48d332bc51d08652316fbc0"
  license "MIT"

  bottle do
    root_url "https://github.com/ManeFunction/homebrew-tap/releases/download/lazyunity-0.1.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a80d628a3ab92503e509d7d72f7cedcab7e0d947e6b216b374b58e27d54b7942"
    sha256 cellar: :any,                 x86_64_linux:  "fe95b3eda5a932977c789e735f946218dc23c7f51d924bc80d66d11c40cb0a8f"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/lazyunity"
  end

  test do
    assert_match "lazyunity v#{version}", shell_output("#{bin}/lazyunity --version")
  end
end
