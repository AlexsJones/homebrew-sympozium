class Sympozium < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/sympozium-ai/sympozium"
  version "0.10.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-darwin-arm64.tar.gz"
      sha256 "75cc832338bf8df0e06b13b41cbd176f7b6b43fcd9862381c07bd5fa3abeae80"
    else
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-darwin-amd64.tar.gz"
      sha256 "d2b86ee52f3f3b5f3bcb63937e4f95eeb9b65849cf9644a88364d0e640d5385e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-linux-arm64.tar.gz"
      sha256 "cce46995f7099a33e94e98fb3e12b8684fd507d3d4e1071b7d8ef0e393473af2"
    else
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-linux-amd64.tar.gz"
      sha256 "8fd4391db46f9d9d7f11e0d0fde4cee33487942cfc50786702854b6b891dd8db"
    end
  end

  def install
    bin.install "sympozium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sympozium version")
  end
end
