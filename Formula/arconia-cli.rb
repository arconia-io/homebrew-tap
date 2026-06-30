# Generated with JReleaser 1.25.0 at 2026-06-30T20:29:04.476690658Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.16.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.16.0/arconia-cli-0.16.0-linux-aarch64.zip"
    sha256 "569b0e3701f2994dcdd240815ba91b5b521da819c6547180d4f52ea5225b383c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.16.0/arconia-cli-0.16.0-linux-amd64.zip"
    sha256 "6d09d9a5db1b38dd225e921ae0bf97ab75f92d8371a2ec3c6e461951b34acd26"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.16.0/arconia-cli-0.16.0-macos-aarch64.zip"
    sha256 "d3bd96dab3ee8a35c0c7f883f88df82e26e5fcf82c95aee21dcf3515ca31b519"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.16.0", output
  end
end
