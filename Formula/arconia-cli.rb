# Generated with JReleaser 1.22.0 at 2026-01-15T21:36:02.90501975Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.9.6"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.6/arconia-cli-0.9.6-linux-aarch64.zip"
    sha256 "a33b9880afcee60a911c84f3393cae6ed8095b9f3eb067ed122148538374f759"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.6/arconia-cli-0.9.6-linux-amd64.zip"
    sha256 "b8076c286010493dbf050ccb47462330d0b577471d6b90309da8900c79a08391"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.6/arconia-cli-0.9.6-macos-aarch64.zip"
    sha256 "f0eea867ecd976002a1f054d3527c272ae40da627e5fd0f9dd05c62b29e97af2"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.6/arconia-cli-0.9.6-macos-amd64.zip"
    sha256 "2512f7815bf05280a5e3a32c11ca9e49f6cfc62350979331d11d73e82647bd18"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.9.6", output
  end
end
