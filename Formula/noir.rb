# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Noir < Formula
  desc "Attack surface detector that identifies endpoints by static analysis"
  homepage "https://github.com/owasp-noir/noir"
  url "https://github.com/owasp-noir/noir/archive/refs/tags/v0.22.0.tar.gz"
  sha256 "9e4f2e58ff9920df4f690829c3a30707549b9e4c5d719abfb0c092d6fe5e073e"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards install"
system "shards build --release --no-debug --production"
bin.install "bin/noir"
  end

  test do
    system "{bin}/noir", "-v"
  end
end
