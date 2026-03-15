class Sympozium < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/AlexsJones/sympozium"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-darwin-arm64.tar.gz"
      sha256 "6906459e66ac4be1eb280fa5fed1104f511cdd84a1ad3736e66f515e31f81d31"
    else
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-darwin-amd64.tar.gz"
      sha256 "11e3f8373985ef0032b8f37b61fb288cdc316244021e04594303207b742f0f40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-linux-arm64.tar.gz"
      sha256 "cd10b47b12c738fc066c3d71c4c3caddb5910fef22815b13ecd5e0cb12b24e72"
    else
      url "https://github.com/AlexsJones/sympozium/releases/download/v#{version}/sympozium-linux-amd64.tar.gz"
      sha256 "465abb4c54de0aa1f25b743a1cd51f1d49c6be165a1ec4277d48426eceb2a8c3"
    end
  end

  def install
    bin.install "sympozium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sympozium version")
  end
end
