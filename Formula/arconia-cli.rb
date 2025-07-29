# Generated with JReleaser 1.19.0 at 2025-07-29T20:53:42.948530709Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.4.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.4.0/arconia-cli-0.4.0-linux-aarch64.zip"
    sha256 "5a3fba6f3acde0d4a74c2f139095429a80b9fcfbf7660ba87f15a9abefe7a74a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.4.0/arconia-cli-0.4.0-linux-amd64.zip"
    sha256 "8a335c497b593cd56c3e368b4a10de3bd9b983b1a42430430b4c75c9b00269cb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.4.0/arconia-cli-0.4.0-macos-aarch64.zip"
    sha256 "ad333e3b9a13cdeb5d2f061ec3ec1459eeafb0de2d2c204dbc6acd2cdeb53e44"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.4.0/arconia-cli-0.4.0-macos-amd64.zip"
    sha256 "95028def17da5356dd4631b26f027d79f54a7594df9ad7d321a074066625828c"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.4.0", output
  end
end
