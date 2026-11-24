class Lazyunity < Formula
  desc "CLI for Unity projects and Editors, built on Unity CLI, inspired by lazygit"
  homepage "https://github.com/ManeFunction/lazyunity"
  url "https://github.com/ManeFunction/lazyunity/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7cd1fc1d11f7173d96cab9c55c8f5d99552572edc48d332bc51d08652316fbc0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/lazyunity"
  end

  test do
    assert_match "lazyunity v#{version}", shell_output("#{bin}/lazyunity --version")
  end
end
