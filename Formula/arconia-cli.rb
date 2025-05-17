# Generated with JReleaser 1.18.0 at 2025-05-17T15:04:12.016141727Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.2.6"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.6/arconia-cli-0.2.6-linux-amd64.zip"
    sha256 "1b29561529bdabe1e47df8136b049c1e726d3fba371d92fe1bf710ccf6fc28bf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.6/arconia-cli-0.2.6-macos-aarch64.zip"
    sha256 "1c6e09237ad2f9efd9e733c36c317314d8ba45c8090a6fa6ba0fc68022c24faf"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.6/arconia-cli-0.2.6-macos-amd64.zip"
    sha256 "5db8e0ec3550ec7911cd12f010e9178d2ec0da7229393b7c542a86c6b9ae1802"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.2.6", output
  end
end
