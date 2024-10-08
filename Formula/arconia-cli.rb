# Generated with JReleaser 1.14.0 at 2024-10-08T20:11:18.158410903Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.0.5"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.5/arconia-cli-0.0.5-linux-amd64.zip"
    sha256 "313be52367f4b636e8d6e5cbb017c557c85c4407e8352dc25ac96510d562dac6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.5/arconia-cli-0.0.5-macos-aarch64.zip"
    sha256 "678f3ecca7b6e97fb261365193fae09cfe83b49b1d4b3d28f877444c1d8b07eb"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.5/arconia-cli-0.0.5-macos-amd64.zip"
    sha256 "024d8d5a346e91da53a1e6ce393f38846c0597bb24c98f0fd6020e423c642a9e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.0.5", output
  end
end
