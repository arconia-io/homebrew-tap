# Generated with JReleaser 1.14.0 at 2024-10-06T15:17:45.940683152Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.0.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.3/arconia-cli-0.0.3-linux-amd64.zip"
    sha256 "274543c6fcb8285390aac9e9274d70c5488c7743868b3deaebf866a20e8d8025"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.3/arconia-cli-0.0.3-macos-aarch64.zip"
    sha256 "7efdf7a1be4c4e91a6e28ab70bb55d577746e01f6e034f4018d00785a44d80d7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.3/arconia-cli-0.0.3-macos-amd64.zip"
    sha256 "b83391a7ffec6e309d6348a991df73319df86a2ef13fa2f3c25d019dd432ada8"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.0.3", output
  end
end
