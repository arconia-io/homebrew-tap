# Generated with JReleaser 1.24.0 at 2026-06-15T05:32:37.053692207Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.15.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.4/arconia-cli-0.15.4-linux-aarch64.zip"
    sha256 "18e5f663d5f652d3a2bedea3b4dd904819f73ef59aa9c2b2e86a6a500c9c664b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.4/arconia-cli-0.15.4-linux-amd64.zip"
    sha256 "bb60881e03602bf23c475b5a102622b2b264891825885b2f31031d0bca8f20b2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.4/arconia-cli-0.15.4-macos-aarch64.zip"
    sha256 "74e1735e1f9ad4cd377104315b35ecb98b16233cb0e77b339106588c0cdf1a8c"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.15.4", output
  end
end
