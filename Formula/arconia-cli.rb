# Generated with JReleaser 1.20.0 at 2025-09-08T23:27:15.146318688Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.6.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.6.0/arconia-cli-0.6.0-linux-aarch64.zip"
    sha256 "bd15a16c0869fd746b6dd6b43d0ad0250c48e72aecf0b68de5b5a13a19b4528e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.6.0/arconia-cli-0.6.0-linux-amd64.zip"
    sha256 "77a1e9da8dfc698928abd3c76577ba72121fdb16d111d1d9522111c309a5ccae"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.6.0/arconia-cli-0.6.0-macos-aarch64.zip"
    sha256 "f50d4113f96cedbf8a82d2e17e9bf07163cc7ce2a3a511e7e55094bfdf00134b"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.6.0/arconia-cli-0.6.0-macos-amd64.zip"
    sha256 "58894eac23106dd8ddc5f5632f3c39d39fe65e01dfd67b410c6e89ce8571cae8"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.6.0", output
  end
end
