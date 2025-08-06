# Generated with JReleaser 1.19.0 at 2025-08-06T21:26:44.90846678Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.5.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.5.1/arconia-cli-0.5.1-linux-aarch64.zip"
    sha256 "76d005c5af415bb8ef718a8b8f098d701baeeeb8069d55633b1dddc60684a952"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.5.1/arconia-cli-0.5.1-linux-amd64.zip"
    sha256 "f743fbdce13bc1b9b55c3f2bde23d00a40c8a326b6e9ace5cdccb12cf8bb0151"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.5.1/arconia-cli-0.5.1-macos-aarch64.zip"
    sha256 "73589bfd8deb127e9094a3926498ab38eae4a7dfa52a1179bc5d7d0a7bde1336"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.5.1/arconia-cli-0.5.1-macos-amd64.zip"
    sha256 "46b145d2f4deaa1521beb726ea1ace1bc63f544a3543f7a8762deb9f3c597c67"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.5.1", output
  end
end
