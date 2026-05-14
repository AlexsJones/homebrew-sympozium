class Sympozium < Formula
  desc "Kubernetes-native AI agent orchestration platform CLI"
  homepage "https://github.com/sympozium-ai/sympozium"
  version "0.10.32"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-darwin-arm64.tar.gz"
      sha256 "73acff822af82e82f087b8bc8fa1e8c7f094f6b7d1151f41cad79c8e66f236fd"
    else
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-darwin-amd64.tar.gz"
      sha256 "d3dac7d3245efc2be0e802e36666157578b2d92ce1f11dc5310fd0bb023293c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-linux-arm64.tar.gz"
      sha256 "87a941d9621b83b1d9f638e16104687ae3ff80d4a498461cdfc8a2161f4b0e78"
    else
      url "https://github.com/sympozium-ai/sympozium/releases/download/v#{version}/sympozium-linux-amd64.tar.gz"
      sha256 "6fcc51bf557d4462bb0c15831589891a0077de4fbd199f32dd700f0546b26873"
    end
  end

  def install
    bin.install "sympozium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sympozium version")
  end
end
