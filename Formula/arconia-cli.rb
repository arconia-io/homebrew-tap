# Generated with JReleaser 1.17.0 at 2025-04-13T22:53:09.221151819Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.2.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.1/arconia-cli-0.2.1-linux-amd64.zip"
    sha256 "374ec724061435112480124e37e9be127f85fc7c2b7c96af39fcbbcaaccacec3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.1/arconia-cli-0.2.1-macos-aarch64.zip"
    sha256 "f06de54ee08a9402b6ec243274d0c3c7ad8b48b83540ff5a48fc6451be08e247"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.1/arconia-cli-0.2.1-macos-amd64.zip"
    sha256 "a8bcef32aa02b0e468d032f53e8e47d8e43b312e1bffe3bd23b106fd6d70731f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.2.1", output
  end
end
