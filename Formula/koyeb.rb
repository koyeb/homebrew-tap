# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Koyeb < Formula
  desc ""
  homepage "https://koyeb.com"
  version "3.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koyeb/koyeb-cli/releases/download/v3.6.1/koyeb-cli_3.6.1_darwin_arm64.tar.gz"
      sha256 "2116eadffb941b8c20b7051f9ee58d42ca5d181a2deb039982cc186d2602bdc0"

      def install
        bin.install "koyeb"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koyeb/koyeb-cli/releases/download/v3.6.1/koyeb-cli_3.6.1_darwin_amd64.tar.gz"
      sha256 "ce113ca08fdb7ff9d5a285e8f12fbb4993fad6bb895d27404037195fecf02e4f"

      def install
        bin.install "koyeb"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koyeb/koyeb-cli/releases/download/v3.6.1/koyeb-cli_3.6.1_linux_amd64.tar.gz"
      sha256 "7cf29330fd9a4a2178674582a0258e50a9fff35edc3fd14aacb99044fec4624b"

      def install
        bin.install "koyeb"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koyeb/koyeb-cli/releases/download/v3.6.1/koyeb-cli_3.6.1_linux_arm64.tar.gz"
      sha256 "73fd4b62a5ab25353ee060a3a3e5ea9da776349ecfa2d984eefeb0528aaa9a6e"

      def install
        bin.install "koyeb"
      end
    end
  end

  test do
    system "#{bin}/koyeb version"
  end
end
