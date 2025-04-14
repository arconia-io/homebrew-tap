# Generated with JReleaser 1.17.0 at 2025-04-14T21:14:48.321774109Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.2.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.3/arconia-cli-0.2.3-linux-amd64.zip"
    sha256 "3f7dae193e799260d5aec467800bdfd901a9ef5f737226c50fdba40146b4fd7e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.3/arconia-cli-0.2.3-macos-aarch64.zip"
    sha256 "b9fc96993cadb7c732feafa234b992066fa2301fca67b3023a5ef4aec7685839"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.3/arconia-cli-0.2.3-macos-amd64.zip"
    sha256 "e9597f267da2d7c24e94a52661dbc8ab4994c4053f8de084c86e48491a37005d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.2.3", output
  end
end
