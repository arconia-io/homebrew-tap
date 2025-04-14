# Generated with JReleaser 1.17.0 at 2025-04-14T15:14:22.117803799Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.2.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.2/arconia-cli-0.2.2-linux-amd64.zip"
    sha256 "4bb84c78e15a98e0a4561ab5925dd37c6f8c85aa532e10e078a29ff64a5e4454"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.2/arconia-cli-0.2.2-macos-aarch64.zip"
    sha256 "15c5f1996b3f9877237503f19660e446287ab03fe089ab3ab6c12bde9ebf2346"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.2/arconia-cli-0.2.2-macos-amd64.zip"
    sha256 "1ed266cba8921a22693233bb7496fd6ee2d7ea09ce52ba43c0a6077f3c3cfbd9"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.2.2", output
  end
end
