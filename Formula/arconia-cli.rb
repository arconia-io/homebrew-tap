# Generated with JReleaser 1.19.0 at 2025-07-08T15:07:47.823912499Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.3.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.3.0/arconia-cli-0.3.0-linux-aarch64.zip"
    sha256 "40c1d1d82b1db9cb4642e63e0b09c55285705cbc255789e355cd877f9156edeb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.3.0/arconia-cli-0.3.0-linux-amd64.zip"
    sha256 "76f2958632c5f6cb882cea242b8c8443e275cd306d52abe9f768fbb7596f9b13"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.3.0/arconia-cli-0.3.0-macos-aarch64.zip"
    sha256 "cebf2a929d4099ad15ab88c70dac6a7eab09d293c125cf0b46fb8dd75bc13178"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.3.0/arconia-cli-0.3.0-macos-amd64.zip"
    sha256 "898957c5bbce07d15ea207ceaa32be890ad860c77d165b550d6397c5454eb298"
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
