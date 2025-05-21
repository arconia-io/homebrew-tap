# Generated with JReleaser 1.18.0 at 2025-05-21T20:55:12.100083782Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.2.8"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.8/arconia-cli-0.2.8-linux-amd64.zip"
    sha256 "38682ec3b36fe8ff87bfd10cb2ab650d902719ae49f77e0e334489643b494f3e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.8/arconia-cli-0.2.8-macos-aarch64.zip"
    sha256 "1c950d33a5187788dee1e377f8745d9132dbbbb7676ce169ce73711682f3aa81"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.8/arconia-cli-0.2.8-macos-amd64.zip"
    sha256 "e6a53d72cb9a975c2818171fb2d9eba822f7f6938ba55130a7d24895a54610c5"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.2.8", output
  end
end
