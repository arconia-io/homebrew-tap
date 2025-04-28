# Generated with JReleaser 1.17.0 at 2025-04-28T23:19:01.062186768Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.2.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.4/arconia-cli-0.2.4-linux-amd64.zip"
    sha256 "17528d087aee012dea7adf28c3757c1ac46d15b2d3ec7faa79cb4b10e39e7c8a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.4/arconia-cli-0.2.4-macos-aarch64.zip"
    sha256 "6a049d0d577e65d942aec5c070cae059c994d2ba4d7547ba7281bf169bc11c10"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.2.4/arconia-cli-0.2.4-macos-amd64.zip"
    sha256 "54adacc8d398c8af74b8592ca94d8eaba8ec272016851b500c601478f18cb726"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.2.4", output
  end
end
