# Generated with JReleaser 1.23.0 at 2026-04-19T07:57:06.527708591Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.14.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.14.0/arconia-cli-0.14.0-linux-aarch64.zip"
    sha256 "36d210f7282768ad99c7f396f424cc7a8c29a60278a6abd6d9f370198d560a79"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.14.0/arconia-cli-0.14.0-linux-amd64.zip"
    sha256 "f552adde733e81e1f0fb9a82952851054b6a6dbf511228bcfcf55392f329bfb0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.14.0/arconia-cli-0.14.0-macos-aarch64.zip"
    sha256 "4ca305f0a221dfad83c7ab23247d4afc41ac112a09aedf16d7120b004c2b5dbb"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.14.0", output
  end
end
