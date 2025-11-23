# Generated with JReleaser 1.21.0 at 2025-11-23T00:03:40.303236655Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.9.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.3/arconia-cli-0.9.3-linux-aarch64.zip"
    sha256 "f5e20a421fb6e2aabd0e49f9e447c9eb864dbe81a71eca20c1b7cc7ff7c1ef24"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.3/arconia-cli-0.9.3-linux-amd64.zip"
    sha256 "86b4503e0648fa058c41ab0527883fac2bfefafe16e2fac255f6b90f08508a22"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.3/arconia-cli-0.9.3-macos-aarch64.zip"
    sha256 "81862cfb66dc6fac3e30f9322341186403846dd56d274dbf9dac931ec3d8d712"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.3/arconia-cli-0.9.3-macos-amd64.zip"
    sha256 "e24be3c659d99954b1d03a09875b8328ed57870903f047420266f89a00476c50"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.9.3", output
  end
end
