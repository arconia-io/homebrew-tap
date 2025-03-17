# Generated with JReleaser 1.17.0 at 2025-03-17T02:32:59.00575311Z

class ArconiaCli < Formula
  desc "Enhance the developer experience for Spring Boot"
  homepage "https://github.com/arconia-io/arconia-cli"
  version "0.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.1.0/arconia-cli-0.1.0-linux-amd64.zip"
    sha256 "334eb8ec4169ee501d41f02e906c7a8030654bd3a98aa5213ce716bb82889d0f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.1.0/arconia-cli-0.1.0-macos-aarch64.zip"
    sha256 "b4a9b8ee59d7e471ebde3062e41df0ae989951c41e255cad54d5e6d5fc927046"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/arconia-io/arconia-cli/releases/download/v0.1.0/arconia-cli-0.1.0-macos-amd64.zip"
    sha256 "d0589fd914077130f895958ca5f4a051c7bc22111494cd29d58316e57f92fe9f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/arconia" => "arconia"
  end

  test do
    output = shell_output("#{bin}/arconia --version")
    assert_match "0.1.0", output
  end
end
