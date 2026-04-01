# Generated with JReleaser 1.23.0 at 2026-04-01T21:53:58.450164713Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.12.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.12.0/arconia-cli-0.12.0-linux-aarch64.zip"
    sha256 "e804991001a483a8165958fb32e86d6609c99112dd0938838405765624a0d003"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.12.0/arconia-cli-0.12.0-linux-amd64.zip"
    sha256 "e22a7b4e189f806c6d9ed78789e860eb38e6259a5734b81f41e19858b9a59341"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.12.0/arconia-cli-0.12.0-macos-aarch64.zip"
    sha256 "a355f0dffdc65a484ca3089f22e6eaad82ff8fbee0e49b79f8ad503d9094d5a8"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.12.0", output
  end
end
