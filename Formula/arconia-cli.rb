# Generated with JReleaser 1.14.0 at 2024-10-07T18:00:26.966247281Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.0.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.4/arconia-cli-0.0.4-linux-amd64.zip"
    sha256 "428d2627e05b6346bfc6befd9adc63d2ba51192ce932205a2f993dcd1046f84e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.4/arconia-cli-0.0.4-macos-aarch64.zip"
    sha256 "61b1c2cde3bb3cb1f31eb91652a79f6599e826c6e3566987b9ae9797dd4ac88d"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.4/arconia-cli-0.0.4-macos-amd64.zip"
    sha256 "da88d5775d9562f8a2f2211ef5c443e01b71bcf85974111046a97cd0b096933f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.0.4", output
  end
end
