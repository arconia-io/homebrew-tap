# Generated with JReleaser 1.15.0 at 2024-12-18T05:01:35.044401296Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.0.9"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.9/arconia-cli-0.0.9-linux-amd64.zip"
    sha256 "36aa5781ef9b9edc08bd078d0b014276acb9fb1972386d43aba9dc40b8b3b131"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.9/arconia-cli-0.0.9-macos-aarch64.zip"
    sha256 "554f5f1e4f12dd3439148629862fd46cf5ff770508a014ecac00da0397c9ace7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.9/arconia-cli-0.0.9-macos-amd64.zip"
    sha256 "94f7a56f4ed1762bcf84fd7424b89268a1eb2458bf33c5b144a5f44b442ad7c0"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.0.9", output
  end
end
