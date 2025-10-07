# Generated with JReleaser 1.20.0 at 2025-10-07T07:03:44.919037076Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.7.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.7.0/arconia-cli-0.7.0-linux-aarch64.zip"
    sha256 "3dd64911ba3c7b20bbe80fa3935c91992036562b438a8025447ffa64d21d3614"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.7.0/arconia-cli-0.7.0-linux-amd64.zip"
    sha256 "ac9c48c92b59671fb3b293c3063bf1e4ad03ee83b23d8ba8f8d32a1f0467bd01"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.7.0/arconia-cli-0.7.0-macos-aarch64.zip"
    sha256 "0ce891f2d398c9e2da85b2c327026946adfdb1800051c91a70848f8ae6a761ce"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.7.0/arconia-cli-0.7.0-macos-amd64.zip"
    sha256 "909bdab5d33cdaa23e4426315f050750f9787d7620be1646cb13aa7b338328ea"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.7.0", output
  end
end
