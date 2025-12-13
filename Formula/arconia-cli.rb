# Generated with JReleaser 1.21.0 at 2025-12-13T22:25:15.494580266Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.9.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.4/arconia-cli-0.9.4-linux-aarch64.zip"
    sha256 "294b87c39251393fbbcc70dc9f6bf91e96bcb7dec67f46068fc13e0e095899de"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.4/arconia-cli-0.9.4-linux-amd64.zip"
    sha256 "b5714887e3cbd5c0e8727fe89682e19bceb2af0cfe3f2589aa930552f33a4972"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.4/arconia-cli-0.9.4-macos-aarch64.zip"
    sha256 "2c017548af0766cfeed104afd5f34140004caba92afbf36c2b0808a0845bd273"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.4/arconia-cli-0.9.4-macos-amd64.zip"
    sha256 "904d1036f5a49aa0c8c0a882c25eb7a2e0d09824c0e78faddd75ef8b64abd949"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.9.4", output
  end
end
