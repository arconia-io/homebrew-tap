# Generated with JReleaser 1.21.0 at 2025-11-04T20:59:22.618172699Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.8.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.8.0/arconia-cli-0.8.0-linux-aarch64.zip"
    sha256 "89671880e95b5017a4bed0c65238ace19cbd74398ded96fce347ca561c2b7041"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.8.0/arconia-cli-0.8.0-linux-amd64.zip"
    sha256 "ec45a41078dde6aa2191d134cf23cf81e1abbc047facd091e4de8b324e72f9d9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.8.0/arconia-cli-0.8.0-macos-aarch64.zip"
    sha256 "18d1d21151e5252644c21170e7558796674f23375b9e4accb42b9cc97f14f747"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.8.0/arconia-cli-0.8.0-macos-amd64.zip"
    sha256 "66cb6cc4568667024d5ec4f845abdf081c2d032dd50022e1643b85452e02591e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.8.0", output
  end
end
