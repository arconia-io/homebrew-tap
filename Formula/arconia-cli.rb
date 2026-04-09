# Generated with JReleaser 1.23.0 at 2026-04-09T06:58:33.169809948Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.13.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.13.2/arconia-cli-0.13.2-linux-aarch64.zip"
    sha256 "ffa58d686fce0cf3e777d19225c875fe99d3de094a55926e81327e56c2332587"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.13.2/arconia-cli-0.13.2-linux-amd64.zip"
    sha256 "d9854ed79cd6253a01b7d5d77b9c742a590f75d5a4a7e420a2de02123bd920f6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.13.2/arconia-cli-0.13.2-macos-aarch64.zip"
    sha256 "2057bfd83eabff8e983a77ca4d53bc95cb446fe8987de8dd4d1dadb542351ff9"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.13.2", output
  end
end
