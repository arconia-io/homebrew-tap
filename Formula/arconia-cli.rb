# Generated with JReleaser 1.17.0 at 2025-04-25T05:39:23.622548629Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.2.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.3/arconia-cli-0.2.3-linux-amd64.zip"
    sha256 "8d4891a74929729d9e5365ac92b454528b41afeb52e839b3ccd2c868d22c0bcb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.3/arconia-cli-0.2.3-macos-aarch64.zip"
    sha256 "8e03f8f3f8c2406e0e24fa1c2d12b9e081decf3892c61afbde6e10a226f85b60"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.3/arconia-cli-0.2.3-macos-amd64.zip"
    sha256 "9025413ec49a82366e9418812772328d1b849841bf63a94b149e004cea6bbc85"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.2.3", output
  end
end
