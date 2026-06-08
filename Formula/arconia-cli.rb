# Generated with JReleaser 1.24.0 at 2026-06-08T22:23:13.817804824Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.15.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.2/arconia-cli-0.15.2-linux-aarch64.zip"
    sha256 "a1f618419d545fdafe30f47a5da50dafe02c381fed9398787ff8dad6465a3ccc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.2/arconia-cli-0.15.2-linux-amd64.zip"
    sha256 "79c195b5c6730646df5b29cbbb7e457047f4cc497e32addf837f702922b1108d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.2/arconia-cli-0.15.2-macos-aarch64.zip"
    sha256 "73ee39091bc8893fdf240ec16415028e160439e9f006207d210661b6d40f1e99"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.15.2", output
  end
end
