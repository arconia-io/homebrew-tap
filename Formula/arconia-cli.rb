# Generated with JReleaser 1.23.0 at 2026-04-09T05:09:10.469490929Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.13.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.13.0/arconia-cli-0.13.0-linux-aarch64.zip"
    sha256 "6b045f545d3efb8edc4603bbaca1c04b52a4ebcfbed8b9688ce3c246e3fe72e3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.13.0/arconia-cli-0.13.0-linux-amd64.zip"
    sha256 "f045b17562539c18407d5513eb8cf7b3ded607ff32aa20fe399333c430e524fb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.13.0/arconia-cli-0.13.0-macos-aarch64.zip"
    sha256 "63459f726c689e6ea32b5162b4c56c540b7fbb534e7891b7d2e3ae88411926b4"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.13.0", output
  end
end
