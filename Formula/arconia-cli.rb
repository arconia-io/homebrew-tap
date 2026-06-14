# Generated with JReleaser 1.24.0 at 2026-06-14T21:21:37.86428496Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.15.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.3/arconia-cli-0.15.3-linux-aarch64.zip"
    sha256 "5d8ffbdc1d33f96c7511e2112733c53ea1be482a632e36fdb8f1d986694cbaa7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.3/arconia-cli-0.15.3-linux-amd64.zip"
    sha256 "a1b014c207cf9d01797ce0dead24f29e08c62657f2b7afaabf52016cb90b4d9b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.15.3/arconia-cli-0.15.3-macos-aarch64.zip"
    sha256 "228a7a45fe2994e60dab04a548bfdbedc4f0a683472d051b2cb2a48e73fb2f4e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.15.3", output
  end
end
