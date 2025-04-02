class Helloworld < Formula
  desc "A simple 'Hello, world' program"
  homepage "https://github.com/purpleteam43/homebrew-helloworld"  # update with your project URL
  url "https://github.com/purpleteam43/homebrew-helloworld/releases/download/v1.0.0/helloworld.tar.gz"
  sha256 "ac8f5fe45a6c4165fe81cc32b21c538cbb857fa8d396e298243ef4da00bbbd5b"  # replace with the hash computed earlier
  version "1.0.0"
  license "MIT"  # or your preferred license

  def install
    libexec.install "helloworld.scpt"
  end

  def post_install
    system "#{libexec}/helloworld.scpt"
  end

  test do
    # Run the binary and verify it outputs "Hello, world!"
    assert_match "Hello, world!", shell_output("#{bin}/hello")
  end
end
