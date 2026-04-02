# Generated with JReleaser 1.23.0 at 2026-04-02T14:58:52.769263547Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.12.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.12.3/arconia-cli-0.12.3-linux-aarch64.zip"
    sha256 "3073361111db2805ef667775cd5859be4f4c5b27e24673e99463ead8b3065ba2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.12.3/arconia-cli-0.12.3-linux-amd64.zip"
    sha256 "32352cb37e48916efb900d7767fbb5d35b247e69259ea2c1c0a8d2ebb85037f6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.12.3/arconia-cli-0.12.3-macos-aarch64.zip"
    sha256 "ba0b27d176850f61e7ada09f1b3689c500cbda02af7922aec41deb5eeb6f7e49"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.12.3", output
  end
end
