# Generated with JReleaser 1.17.0 at 2025-03-17T02:38:19.836763286Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.1.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.1.1/arconia-cli-0.1.1-linux-amd64.zip"
    sha256 "08271ffb0f01fe4e23c6aaacd001d3f0f37768eba39b605126711dde57c7a838"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.1.1/arconia-cli-0.1.1-macos-aarch64.zip"
    sha256 "15a3a792e9ff99957e043772f1985bbbb3aecbaca8fcf11e9fca7649356034c8"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.1.1/arconia-cli-0.1.1-macos-amd64.zip"
    sha256 "0000c8bcf1859088e56e6d6a199102d7638f3a325e4ee533ae7a91fa10329ab4"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.1.1", output
  end
end
