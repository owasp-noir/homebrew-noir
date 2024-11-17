# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Noir < Formula
  desc "Attack surface detector that identifies endpoints by static analysis"
  homepage "https://github.com/owasp-noir/noir"
  url "https://github.com/owasp-noir/noir/archive/refs/tags/v0.18.3.tar.gz"
  sha256 "5173e62129afafeb6bb622b2a0ab45db9b2bb0781fad1258b6679f3bab3d69c2"
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
