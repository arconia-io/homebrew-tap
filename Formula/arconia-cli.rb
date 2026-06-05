# Generated with JReleaser 1.24.0 at 2026-06-05T09:45:38.226053272Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.15.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.1/arconia-cli-0.15.1-linux-aarch64.zip"
    sha256 "50a7801724084bc6c3893b6a6fcffd7ef1243fafa58c817d281130e65e3647bf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.1/arconia-cli-0.15.1-linux-amd64.zip"
    sha256 "114e1ea9cb436c7a607392148a1518f6909326534a99b79ffe51612dceeaa7bd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.1/arconia-cli-0.15.1-macos-aarch64.zip"
    sha256 "12cc624edb0c9fa371192a1dbfccb0ff4971305a7982aafd74608df6fc164c84"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.15.1", output
  end
end
