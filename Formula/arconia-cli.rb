# Generated with JReleaser 1.22.0 at 2026-02-19T23:40:06.231709606Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.9.8"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.8/arconia-cli-0.9.8-linux-aarch64.zip"
    sha256 "89f1c9c870dd5df85745cba1cf8c1967ba507695ca4efc5aff074ff12fd36090"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.8/arconia-cli-0.9.8-linux-amd64.zip"
    sha256 "fc8dd9aab96510ba68d14dc8071b4b1f92afb83c906551328da0ca90c0277bfe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.8/arconia-cli-0.9.8-macos-aarch64.zip"
    sha256 "12b6cd02ad25b4ce18903b231999feaabde7f428a6d682babd573c60ae213bf9"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.9.8", output
  end
end
