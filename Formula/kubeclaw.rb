class Kubeclaw < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/AlexsJones/kubeclaw"
  version "0.0.38"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-darwin-arm64.tar.gz"
      sha256 "39148c096a6991e6ea07cdf1e45602d58c14032bb1efca63592ea7fce478f2a9"
    else
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-darwin-amd64.tar.gz"
      sha256 "c6954e7e92a53fbc5833a330dc4c1d41d511fc880bb0a93e60ff1b8027477fae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-linux-arm64.tar.gz"
      sha256 "bc7560d10add3c64540cb52b2c9167c7100d7104fd2f3c21b5e9878001fff908"
    else
      url "https://github.com/AlexsJones/kubeclaw/releases/download/v#{version}/kubeclaw-linux-amd64.tar.gz"
      sha256 "8452bca0f3add9cffb507ad69d983980a1028a8660f1e9d8759b06cd49458b7a"
    end
  end

  def install
    bin.install "kubeclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubeclaw version")
  end
end
