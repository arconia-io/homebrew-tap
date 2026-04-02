# Generated with JReleaser 1.23.0 at 2026-04-02T14:00:09.897785381Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.12.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.12.2/arconia-cli-0.12.2-linux-aarch64.zip"
    sha256 "2e09edf5311de7b93f180f6b566370e2194de71697269c9860edebd995fc9744"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.12.2/arconia-cli-0.12.2-linux-amd64.zip"
    sha256 "12e0bc523181902b4cf363daf8c424371b9a431b8e8e0d3ef3f409f4e9370faf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.12.2/arconia-cli-0.12.2-macos-aarch64.zip"
    sha256 "f49bbdf5cb99c2818e5516c9d00b22fb62fb676e57b246a199cd6d16b004ea24"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.12.2", output
  end
end
