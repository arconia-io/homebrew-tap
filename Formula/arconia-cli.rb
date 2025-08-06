# Generated with JReleaser 1.19.0 at 2025-08-06T21:58:53.729142098Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.5.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.5.2/arconia-cli-0.5.2-linux-aarch64.zip"
    sha256 "0194ff8385313a1935fa7dd161a1e9b361e08b1b0d728c529e81cb67d153cb36"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.5.2/arconia-cli-0.5.2-linux-amd64.zip"
    sha256 "5d4639476f4febe452d0c2d4fe8c3128cd8b2a16eea486875ce522c0f9b93cce"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.5.2/arconia-cli-0.5.2-macos-aarch64.zip"
    sha256 "87fafc149bd2d048c1b9c108f23ef61ebc611e979fb73dc92ff5a434f5ca08b5"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.5.2/arconia-cli-0.5.2-macos-amd64.zip"
    sha256 "11cc6c5a590bbd2add402d2e3a152078eaa3b8a42d0f4f18ca03897dc631a1a8"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.5.2", output
  end
end
