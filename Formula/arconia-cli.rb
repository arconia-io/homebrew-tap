# Generated with JReleaser 1.20.0 at 2025-10-12T21:29:49.666115882Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.7.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.7.2/arconia-cli-0.7.2-linux-aarch64.zip"
    sha256 "ebae0ef57282e500c34aca0c99b0d47940e13e283b9ce46d370054f29706ea1e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.7.2/arconia-cli-0.7.2-linux-amd64.zip"
    sha256 "a3b7c2f61ffeadc46edf2f1273aae9406b56fc5d6c017e55d7a8b25905a06dbe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.7.2/arconia-cli-0.7.2-macos-aarch64.zip"
    sha256 "99f1cefb15f947796ea1ffb0b58792f77bec14acb48ee0b6c8c9bf21e71c85ba"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.7.2/arconia-cli-0.7.2-macos-amd64.zip"
    sha256 "7a915c2d46106e31c20bd6ae928107aa38f72ddfdace7e166934af48e71e74d5"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.7.2", output
  end
end
