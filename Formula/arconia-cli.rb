# Generated with JReleaser 1.23.0 at 2026-03-06T20:12:19.105794547Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.10.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.10.0/arconia-cli-0.10.0-linux-aarch64.zip"
    sha256 "4b13696b1f9af18f5b608f722397d438ab90cd005b05491e674a0d8551bd1620"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.10.0/arconia-cli-0.10.0-linux-amd64.zip"
    sha256 "df143e59d7b52e46b6010a901b2d5bd8214d0f604ed29c03c4581a38d178d961"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.10.0/arconia-cli-0.10.0-macos-aarch64.zip"
    sha256 "adab0d3858666f77525a09b44eb5144aa002b5a573689c831f49a9c590cbe386"
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
