# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jwtutil < Formula
  desc "handy little jwt debugging utility to encode/decode tokens"
  homepage "https://github.com/goware/jwtutil"
  version "0.5.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goware/jwtutil/releases/download/v0.5.9/jwtutil.darwin-arm64"
      sha256 "42d9676ddd37cfcc1c749cd132e72d81d44e91ec56a1dca9f0e42daaf5b5a35a"

      def install
        bin.install "jwtutil.darwin-arm64" => "jwtutil"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goware/jwtutil/releases/download/v0.5.9/jwtutil.darwin-amd64"
      sha256 "43dba9a098db50460e9d98e6d2c3e0a75481fe3e73eb289d8152482328610215"

      def install
        bin.install "jwtutil.darwin-amd64" => "jwtutil"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goware/jwtutil/releases/download/v0.5.9/jwtutil.linux-amd64"
      sha256 "e8689f5c4df6e2e081edf4bf3f1e389fb9ac7e969ede2e228648618f34f7cb24"

      def install
        bin.install "jwtutil.linux-amd64" => "jwtutil"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goware/jwtutil/releases/download/v0.5.9/jwtutil.linux-arm64"
      sha256 "2d626c16b752971c531cd7e4350f245085569a13431971b0d55b3bf045a3d526"

      def install
        bin.install "jwtutil.linux-arm64" => "jwtutil"
      end
    end
  end
end
