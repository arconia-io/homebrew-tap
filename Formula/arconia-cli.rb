# Generated with JReleaser 1.21.0 at 2025-11-16T22:08:10.198322709Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.9.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.0/arconia-cli-0.9.0-linux-aarch64.zip"
    sha256 "75c02c9273fbed37fa94cbbe367b2362df1f31cefa21ca32e5097420b4391356"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.0/arconia-cli-0.9.0-linux-amd64.zip"
    sha256 "7afdff052f1534e9da71e088d8bdda3a0db7e1fcaf1cdbc3db4e2756046bd6ef"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.0/arconia-cli-0.9.0-macos-aarch64.zip"
    sha256 "1d48d86f9b7bccf6d3307b163aa04d7460b0fe4bae821b5cfebbb87699d85ab1"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.0/arconia-cli-0.9.0-macos-amd64.zip"
    sha256 "5c7eec2ab8abbfb478477fd4c89800aa04bc478c1f9b1210a0de220e55cb5034"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.9.0", output
  end
end
