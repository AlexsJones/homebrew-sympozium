class Kubeclaw < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/AlexsJones/kubeclaw"
  version "0.0.36"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-darwin-arm64.tar.gz"
      sha256 "5c793084cbefe3fbc40a56f7038f7d24daf9f55a038882e95862d481325847a0"
    else
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-darwin-amd64.tar.gz"
      sha256 "c62b35d7a0803dfab64b84f427db7411d98795e1d6903d4f339c81eec4b05856"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-linux-arm64.tar.gz"
      sha256 "d53d14e1b025148257f5914f5d0e5fc86f455b39460ebf9b99a7fdc0fa033410"
    else
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-linux-amd64.tar.gz"
      sha256 "30b5755779155d683d509bf336bab27b2a635f6e2f84a2e9280a4acace7a8517"
    end
  end

  def install
    bin.install "kubeclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubeclaw version")
  end
end
