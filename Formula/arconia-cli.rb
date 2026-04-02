# Generated with JReleaser 1.23.0 at 2026-04-02T08:50:53.503930455Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.12.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.12.1/arconia-cli-0.12.1-linux-aarch64.zip"
    sha256 "8b9088681ef2260d0ea41e2564061909cf345a705bedfb17967716742fe4e87f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.12.1/arconia-cli-0.12.1-linux-amd64.zip"
    sha256 "4c7694a44dc9ffdd9fcadbb244001b0d531a58679afa513f10d244866a0542db"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.12.1/arconia-cli-0.12.1-macos-aarch64.zip"
    sha256 "3f08a413a7cda159b7c659140843eebba6c71c1501ccef2bd048729c60900141"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.12.1", output
  end
end
