# Generated with JReleaser 1.18.0 at 2025-05-17T15:20:49.679038255Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.2.7"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.7/arconia-cli-0.2.7-linux-amd64.zip"
    sha256 "f53445a3abd89ed1a677b655ace5cee4cb2e8d75657dbdb3d9857dd074be8237"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.7/arconia-cli-0.2.7-macos-aarch64.zip"
    sha256 "4bf0ac90b982eb4459390c2f8dfef6497a0b543d783ee79133eef6c4752c24c3"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.7/arconia-cli-0.2.7-macos-amd64.zip"
    sha256 "4c2fd4d2617ff2395b178fcfe668f72a6ee49ee0127577c7c39057cdc24a62f4"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.2.7", output
  end
end
