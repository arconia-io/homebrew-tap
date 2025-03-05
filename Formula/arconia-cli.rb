# Generated with JReleaser 1.17.0 at 2025-03-05T22:24:15.893302656Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.0.10"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.10/arconia-cli-0.0.10-linux-amd64.zip"
    sha256 "21ee5c2d4c73408ee9c30a64cd9c1cd0c622878b851ebd3866781550eefaea38"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.10/arconia-cli-0.0.10-macos-aarch64.zip"
    sha256 "ac30ef573cced36ed5e702f58d1e4ac434828f404e11458558cfb2d38ced01ea"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.10/arconia-cli-0.0.10-macos-amd64.zip"
    sha256 "8e2f436aeab82e1f65dd4a669c5fdf80ee354fe844294056368f5388d101bb93"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.0.10", output
  end
end
