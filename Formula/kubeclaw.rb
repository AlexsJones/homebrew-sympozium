class Kubeclaw < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/AlexsJones/kubeclaw"
  version "0.0.35"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-darwin-arm64.tar.gz"
      sha256 "f497728027619ecb4c79d894844e0c710b025d057733d092432437e5498ea9a3"
    else
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-darwin-amd64.tar.gz"
      sha256 "ea11999e4d433b05810d67a39bf287a69b27e2f88821ce681232d92a1a34ee32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-linux-arm64.tar.gz"
      sha256 "eebd72117a080f54ed03a0821b565a15070ead8f4c8a54c8b3abe1d93d369b27"
    else
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-linux-amd64.tar.gz"
      sha256 "2a0d74e0c1fc82ec85560867494ff5d5521c0eb09d06deea3fd5a8f0579f6911"
    end
  end

  def install
    bin.install "kubeclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubeclaw version")
  end
end
