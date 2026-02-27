class Sympozium < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/AlexsJones/sympozium"
  version "0.0.64"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-darwin-arm64.tar.gz"
      sha256 "3657eee9be37d4fcb6626019ec2caf4382b15fe09a4defa70f01afc8afc58f43"
    else
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-darwin-amd64.tar.gz"
      sha256 "28e7e41ea52ec71ec3bb9317ec20f032799b0f8cf4b4ff4cbb71b533eddfd5a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-linux-arm64.tar.gz"
      sha256 "0b55896a5f72e35c22c8afc084f70692a6899756f53d6d07744ed1bff518cf47"
    else
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-linux-amd64.tar.gz"
      sha256 "5e36c1e07d61d74b271b364d569013138bd3a977ab9a703831378f26245a5323"
    end
  end

  def install
    bin.install "sympozium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sympozium version")
  end
end
