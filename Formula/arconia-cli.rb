# Generated with JReleaser 1.23.0 at 2026-04-13T07:52:05.331891552Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.14.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.14.0/arconia-cli-0.14.0-linux-aarch64.zip"
    sha256 "25faf150935360f34912d27b2873b47a4ba7328d2b9c48fd09be619b165e0203"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.14.0/arconia-cli-0.14.0-linux-amd64.zip"
    sha256 "944a6eca725419a934e4c55ccdb862d7475881c90efa8c2ba3e8693a09a2431c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.14.0/arconia-cli-0.14.0-macos-aarch64.zip"
    sha256 "ac68526c7740fdb9c0843a0db40bb725672ede981a3a2be78302baaa8e54350a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.14.0", output
  end
end
