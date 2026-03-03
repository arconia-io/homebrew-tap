# Generated with JReleaser 1.23.0 at 2026-03-03T20:52:54.178461712Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.10.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.10.0/arconia-cli-0.10.0-linux-aarch64.zip"
    sha256 "5c64bf10de2b5e4cb0bbf7db1753427c586356ff88362b96e328652b38641b8f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.10.0/arconia-cli-0.10.0-linux-amd64.zip"
    sha256 "c6abd669d0cd2e14143d0a16b117671c144a04def2c8142f04fbeb5ee98df719"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.10.0/arconia-cli-0.10.0-macos-aarch64.zip"
    sha256 "ccb11ff4b32045e01f1e6c4ba2dd6a497c949d9ee744431facbf0f96136620cd"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.10.0", output
  end
end
