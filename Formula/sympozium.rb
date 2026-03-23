class Sympozium < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/sympozium-ai/sympozium"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-darwin-arm64.tar.gz"
      sha256 "d467e5d98a6ffb8227a62f60eb3725383b430184f68218886259b7799e32a175"
    else
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-darwin-amd64.tar.gz"
      sha256 "c51a73b08551674a98737d7408609ef8798614f5e16bd01c7db26ad6fc1c6e1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-linux-arm64.tar.gz"
      sha256 "47ab64b116e23c9c258d1f5355df14317ceb2912901714e6c029bc26e54ba35e"
    else
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-linux-amd64.tar.gz"
      sha256 "196a331e6fd53c63ea37b10bd20248724c5401b9939c5a2236b5baff4bd85693"
    end
  end

  def install
    bin.install "sympozium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sympozium version")
  end
end
