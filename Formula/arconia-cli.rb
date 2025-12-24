# Generated with JReleaser 1.21.0 at 2025-12-24T16:03:20.712067482Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.9.5"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.5/arconia-cli-0.9.5-linux-aarch64.zip"
    sha256 "37b38182bf76e2a77348c2b59caf045c82cb26c6be189d522fd06f533ef27d73"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.5/arconia-cli-0.9.5-linux-amd64.zip"
    sha256 "a6926b65180b9ccc8941e7d048de406cbbbc45c59bc7b8814524b048fe38d889"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.5/arconia-cli-0.9.5-macos-aarch64.zip"
    sha256 "c922ea6e58429b6b3d4c4845a285a1f1bd65f238bfb65130d34dab90e03dd20e"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.9.5/arconia-cli-0.9.5-macos-amd64.zip"
    sha256 "2e703fc7e5ee707d46b3e7e5c2b76821b2cb8a4a0033d7cae35a5e6a5551f415"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.9.5", output
  end
end
