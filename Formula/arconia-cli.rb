# Generated with JReleaser 1.14.0 at 2024-10-30T18:52:09.382643305Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.0.7"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.7/arconia-cli-0.0.7-linux-amd64.zip"
    sha256 "e07799c0ed1ad061f8e8082f8ced80e50be9ca1fe86a38e7c7021018bdd2b053"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.7/arconia-cli-0.0.7-macos-aarch64.zip"
    sha256 "758b3452d571f8fb0e7d7a85e7055be94dd18c5b02bfdb98e90b7336d541283a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.7/arconia-cli-0.0.7-macos-amd64.zip"
    sha256 "ddabdbf3c70141190e02dd1dfb4a1748abfed33b4c5461876c8c05919324cc83"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.0.7", output
  end
end
