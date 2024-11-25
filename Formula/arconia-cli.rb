# Generated with JReleaser 1.15.0 at 2024-11-25T18:09:35.443611046Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.0.8"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.8/arconia-cli-0.0.8-linux-amd64.zip"
    sha256 "fb0ffdac0b1cab0aa68373f06524a0c1fde59ef4d2d28fbe805f68ce07645019"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.8/arconia-cli-0.0.8-macos-aarch64.zip"
    sha256 "084bd73676ac85b0f0d423b158f937df06471cb735e0d51cc82bec0733e9006a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.0.8/arconia-cli-0.0.8-macos-amd64.zip"
    sha256 "7f2f5b40139ea302750d3a464b6c9646a5299238a515f6a48732a481419c5ed8"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.0.8", output
  end
end
