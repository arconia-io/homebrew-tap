# Generated with JReleaser 1.18.0 at 2025-05-13T06:20:16.17838168Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.2.5"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.5/arconia-cli-0.2.5-linux-amd64.zip"
    sha256 "75f3fd373de7ebfb0b4023d01f31ef848b0975fef51e28d902901f5e1d2a215a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.5/arconia-cli-0.2.5-macos-aarch64.zip"
    sha256 "13b4b4a8d143602f0f252849b58a8530098d122bddd2335b0838a69b4a64a2e2"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.5/arconia-cli-0.2.5-macos-amd64.zip"
    sha256 "042ce5ca948f3b1b9a35c671898f35d088f68d1b1a1327b90563479920ba04fd"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.2.5", output
  end
end
