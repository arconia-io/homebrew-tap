# Generated with JReleaser 1.17.0 at 2025-03-22T23:45:15.670543336Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.1.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.1.3/arconia-cli-0.1.3-linux-amd64.zip"
    sha256 "e266d1f288e3f47a6ee9499dbd5e60a0bec690fc7888e94e305cc05d3621c97d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.1.3/arconia-cli-0.1.3-macos-aarch64.zip"
    sha256 "5764b0a5781b524f43e968a26c0fa5fcaeec4b0575d0eaee8ba222f079e26972"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.1.3/arconia-cli-0.1.3-macos-amd64.zip"
    sha256 "e706b2646eb28aaa73aa439f30a76178f408150f949210fc8cf780ea0b9291d3"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.1.3", output
  end
end
