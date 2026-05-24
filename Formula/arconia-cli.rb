# Generated with JReleaser 1.24.0 at 2026-05-24T21:49:11.12337667Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.15.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.0/arconia-cli-0.15.0-linux-aarch64.zip"
    sha256 "84f02d92e3af962783b4a28129e6cfb9eba11305d3c01fbb7763826ab2e9f88d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.0/arconia-cli-0.15.0-linux-amd64.zip"
    sha256 "0e3e47e0254a03d03178c02489ea63d6208129ed18799e201b6d204104dffc61"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.0/arconia-cli-0.15.0-macos-aarch64.zip"
    sha256 "006211c34401a2f046a56c9f7586099c701f5a0f761d092f1582838f9d7997a4"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.15.0", output
  end
end
