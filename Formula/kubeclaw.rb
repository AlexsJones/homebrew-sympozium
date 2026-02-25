class Kubeclaw < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/AlexsJones/kubeclaw"
  version "0.0.37"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-darwin-arm64.tar.gz"
      sha256 "8d7de19ed2245a89e78b33bb4d584d427131672f3a062adfcc2542b8b691b29e"
    else
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-darwin-amd64.tar.gz"
      sha256 "0f102d0804c65f775d0e1c12fe222863c15d709e8a2feb8c3ca0d601d67f1ddc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-linux-arm64.tar.gz"
      sha256 "8b21a141a7325a794b422e1c977d9110d9074ca6069efa4b26cdaa9c8c459fcc"
    else
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-linux-amd64.tar.gz"
      sha256 "c99502963f47ad79a654f21481ec8e5a7bc4fa94bc62e83e1a8ba97475798dfe"
    end
  end

  def install
    bin.install "kubeclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubeclaw version")
  end
end
