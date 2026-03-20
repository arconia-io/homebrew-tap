# Generated with JReleaser 1.23.0 at 2026-03-20T21:28:40.284504556Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.11.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.11.0/arconia-cli-0.11.0-linux-aarch64.zip"
    sha256 "2eccb365224c9235de45332375261e2ee6b93567153e9f5298649544850dc48e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.11.0/arconia-cli-0.11.0-linux-amd64.zip"
    sha256 "c7241d9c895f34a502eac9e9945454dd9a5ac8b4f11e0ed5075b1161ece050ad"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.11.0/arconia-cli-0.11.0-macos-aarch64.zip"
    sha256 "921ab782dad7e0b9dcab445f2ec2b6d2c7c17e74a623215cab0d724b24954b7a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.11.0", output
  end
end
