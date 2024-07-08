class Hello < Formula
  desc "A simple 'hello world' program"
  homepage "https://github.com/b4dW01ff/hello.git"
  url "https://github.com/b4dW01ff/hello/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "1801773773abf725cd19e48a2be2e4db5d8fdc7ce44ce5d44c914823598790cf"
  license "MIT"

  def install
    bin.install "dist/hello"
  end

  test do
    assert_equal "Hello John!", shell_output("#{bin}/hello John").strip
  end
end
