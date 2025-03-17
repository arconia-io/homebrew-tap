# Generated with JReleaser 1.17.0 at 2025-03-17T02:48:35.361089016Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.1.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.1.2/arconia-cli-0.1.2-linux-amd64.zip"
    sha256 "84ce1b9ce33d1dcdd04f709435caf0ce87118e5dbfe12cf09ca96f49a73027b0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.1.2/arconia-cli-0.1.2-macos-aarch64.zip"
    sha256 "36496b9f6a16671579a4bdc33cfddd0f9bafdc7976a4f6d62d1f58d4cd4bd1c0"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.1.2/arconia-cli-0.1.2-macos-amd64.zip"
    sha256 "5da9bcd6172d601f9821fa9fe657560ff270a3470311f78f94a62793046bac67"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.1.2", output
  end
end
