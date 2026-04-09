# Generated with JReleaser 1.23.0 at 2026-04-09T06:35:51.122047666Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.13.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.13.1/arconia-cli-0.13.1-linux-aarch64.zip"
    sha256 "ec781c31c32c6d47372028b87fbc68f6ce908c36cd96c6d2517ee6e14f6b3032"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.13.1/arconia-cli-0.13.1-linux-amd64.zip"
    sha256 "c70c1dcabc40e0c4a5ada28dbed48d900af71736d462208b3b0c4fe5ac38ab8d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.13.1/arconia-cli-0.13.1-macos-aarch64.zip"
    sha256 "740b9a59409a4daa629f299b73019d013b7fc996c7cb1b3d27f57ceef7b3cf35"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.13.1", output
  end
end
