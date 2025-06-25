# Generated with JReleaser 1.18.0 at 2025-06-25T15:18:41.142245673Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.2.9"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.9/arconia-cli-0.2.9-linux-amd64.zip"
    sha256 "2406cd88b8b375ba08d9b7253464be13840013ef84e410f5e403da8a9533ec8e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.9/arconia-cli-0.2.9-macos-aarch64.zip"
    sha256 "078fcb1eb2dfd1a0df6e9772b6cc4d781ea13edb0371e8f8044cc81039ac41a8"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.9/arconia-cli-0.2.9-macos-amd64.zip"
    sha256 "b5b223a969f205de60ff397c1fd644c0acef83f4211b6e748a83dd88838a5397"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.2.9", output
  end
end
