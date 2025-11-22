# Generated with JReleaser 1.21.0 at 2025-11-22T12:34:12.869300556Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.9.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.2/arconia-cli-0.9.2-linux-aarch64.zip"
    sha256 "a3c1198dae6f661cda75c16b4166c6c96a538ff9c116c38974c2f53f1c7ef01e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.2/arconia-cli-0.9.2-linux-amd64.zip"
    sha256 "0e9567d443dcf5d6716e3b43c34322bf8c5e1ccb7dcfcb475dc0172465254955"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.2/arconia-cli-0.9.2-macos-aarch64.zip"
    sha256 "53aea585d9be99713c638c9c41267bd21cb48405e18dd539455f84b7e5a2515c"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.2/arconia-cli-0.9.2-macos-amd64.zip"
    sha256 "99bb5cdebc49aecc234dff10943cc5549702e6c8fe205ac37db73cb8a32fad39"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.9.2", output
  end
end
