class Sympozium < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/sympozium-ai/sympozium"
  version "0.8.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-darwin-arm64.tar.gz"
      sha256 "b365be18eff2c5f651b5aeadca9ab5fa6bf4f42bcac23b726ebd1cc0e9d4ffb7"
    else
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-darwin-amd64.tar.gz"
      sha256 "d26f39f55f84b68d14848f4a218378111fb4b38a5abdc1a0a0797dcd0d06b460"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-linux-arm64.tar.gz"
      sha256 "7c44d8f9dee4c206f91d58bba67fccff443949477606b29f04478ab32f6ed590"
    else
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-linux-amd64.tar.gz"
      sha256 "e6a4c911e473ae7f8afb4035f50cca4e9ad5830a6b7c4068861924f7bedcffce"
    end
  end

  def install
    bin.install "sympozium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sympozium version")
  end
end
