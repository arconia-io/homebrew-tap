# Generated with JReleaser 1.14.0 at 2024-10-08T20:25:51.452745689Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.0.6"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.6/arconia-cli-0.0.6-linux-amd64.zip"
    sha256 "10bede07104b72e5b027d368c731568adc5a9b019f05e1c2e7b2890df6b28afa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.6/arconia-cli-0.0.6-macos-aarch64.zip"
    sha256 "a652d92f0a4c544afbed5362b6d2ccdc169cad1ac724e6467eacadad61af10b5"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.6/arconia-cli-0.0.6-macos-amd64.zip"
    sha256 "dceab82ba2e55769af2d5ba10fc77ca7938a4ed1dc6ad397cd9cbdd5b2a49eec"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.0.6", output
  end
end
