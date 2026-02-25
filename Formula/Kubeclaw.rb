class Kubeclaw < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/AlexsJones/kubeclaw"
  version "0.0.34"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-darwin-arm64.tar.gz"
      sha256 "0b65800b3c05f62458c6497d4a717899fcae3ef46bb6087482a174bc28605296"
    else
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-darwin-amd64.tar.gz"
      sha256 "c4f7bc6e6dd1d8631b4272e44cee13ba7ce6a14408df39cf464054f2d81d837e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-linux-arm64.tar.gz"
      sha256 "d9f320fb8549c310b92de96e5e50b2c41fae3ce419ed982a5667fce1cccd9343"
    else
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-linux-amd64.tar.gz"
      sha256 "b25d65d9f6d7b0b38fc3bd4e178930db8fb41ec0368edaccfdf080501531384e"
    end
  end

  def install
    bin.install "kubeclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubeclaw version")
  end
end
