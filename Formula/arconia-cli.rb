# Generated with JReleaser 1.19.0 at 2025-08-06T20:21:04.030432583Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.5.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.5.0/arconia-cli-0.5.0-linux-aarch64.zip"
    sha256 "baf838037f12f87e521fd1e0a182505026f646f82128bf53dfc2ae450673bfa4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.5.0/arconia-cli-0.5.0-linux-amd64.zip"
    sha256 "523393d129844d582339f1bf2e17d3cfd5695e54f2aca47a9fee5e87128255b2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.5.0/arconia-cli-0.5.0-macos-aarch64.zip"
    sha256 "3fd63b8a6d34225f7c403c5879e6de80e8a04158880e526b361815bd047f71d5"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.5.0/arconia-cli-0.5.0-macos-amd64.zip"
    sha256 "e7992657900ae726a9cd6155a82804846502512dabcaa60f4ac543e3775e8ef3"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.5.0", output
  end
end
