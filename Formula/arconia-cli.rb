# Generated with JReleaser 1.20.0 at 2025-10-07T07:54:52.463263105Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.7.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.7.1/arconia-cli-0.7.1-linux-aarch64.zip"
    sha256 "0f63450ca8887f5d3790ea0a04c0a1b83b462400328b6bd6d4df3459b2e0a03c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.7.1/arconia-cli-0.7.1-linux-amd64.zip"
    sha256 "816474e3fc489266fee09427ef3b5b582651f9d7715fcc3d698e80640f69e746"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.7.1/arconia-cli-0.7.1-macos-aarch64.zip"
    sha256 "d5fc2b59775d8f38edd06a523256be256791d2c395d5068a2eb6ddc97c9af233"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.7.1/arconia-cli-0.7.1-macos-amd64.zip"
    sha256 "b99346bbb1f5a6d18d33fd6ccbaa6131d74e2dd25e4a02d69d4b7793aa5db224"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.7.1", output
  end
end
