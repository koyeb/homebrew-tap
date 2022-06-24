# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Koyeb < Formula
  desc ""
  homepage "https://koyeb.com"
  version "2.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koyeb/koyeb-cli/releases/download/v2.6.1/koyeb-cli_2.6.1_darwin_arm64.tar.gz"
      sha256 "d7abe3a280e0b3b882f14c2f5074ca26fa2e7378e70faf355679b5cbac94c842"

      def install
        bin.install "koyeb"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koyeb/koyeb-cli/releases/download/v2.6.1/koyeb-cli_2.6.1_darwin_amd64.tar.gz"
      sha256 "9dcd3f89453c7df345f9f9d2485c802004601ae2ee512798cfeabc1445854bac"

      def install
        bin.install "koyeb"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koyeb/koyeb-cli/releases/download/v2.6.1/koyeb-cli_2.6.1_linux_amd64.tar.gz"
      sha256 "6e9980e13e243c70f00af3c76f2461b836b33ab611c02c28bc52d5fdb228419d"

      def install
        bin.install "koyeb"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koyeb/koyeb-cli/releases/download/v2.6.1/koyeb-cli_2.6.1_linux_arm64.tar.gz"
      sha256 "f4da01fdd224d02487aa8e8d9973235de1c8649c34729964666d357ba4efd2b2"

      def install
        bin.install "koyeb"
      end
    end
  end

  test do
    system "#{bin}/koyeb version"
  end
end
