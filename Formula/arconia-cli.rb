# Generated with JReleaser 1.17.0 at 2025-04-13T22:32:07.561970967Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.2.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.0/arconia-cli-0.2.0-linux-amd64.zip"
    sha256 "c08e1f29673c6c86e882f7bc6ce1e3743dfc0a0333c44c95a9af3d4985ce1910"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.0/arconia-cli-0.2.0-macos-aarch64.zip"
    sha256 "e4a05b407ee3537ee2444937a28e0a558776fedb9f26795f751097cbc6dcb53a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.0/arconia-cli-0.2.0-macos-amd64.zip"
    sha256 "b6cfee1457f33e1a6032dff1fa5bf7ef2fb1d5c576453fb4e75ae7a250b59b33"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.2.0", output
  end
end
