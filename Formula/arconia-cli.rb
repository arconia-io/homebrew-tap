# Generated with JReleaser 1.19.0 at 2025-07-25T17:07:55.424319082Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.3.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.3.0/arconia-cli-0.3.0-linux-aarch64.zip"
    sha256 "d65945799cc32979d67b0035b0798bed40478620614a35dfa5952d7789d11729"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.3.0/arconia-cli-0.3.0-linux-amd64.zip"
    sha256 "04c8dfc054ff2c30dc4021b77281b1218d278075746221e3de97f08942616b98"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.3.0/arconia-cli-0.3.0-macos-aarch64.zip"
    sha256 "90270565e8a1f50ef643ad145d9c5c4dffd14ae239044b0be1b012e6ad16c662"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.3.0/arconia-cli-0.3.0-macos-amd64.zip"
    sha256 "a9782de1fe7c2673d220f13b12c80501efa1f6cbbc809d30b68f272c1ad7335a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.3.0", output
  end
end
