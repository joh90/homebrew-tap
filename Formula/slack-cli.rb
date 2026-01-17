class SlackCli < Formula
  desc "Slack CLI - interact with Slack as yourself"
  homepage "https://github.com/joh90/slack-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joh90/slack-cli/releases/download/v#{version}/slack-darwin-arm64"
      sha256 "PLACEHOLDER_SHA256_ARM64"

      def install
        bin.install "slack-darwin-arm64" => "slack"
      end
    end

    on_intel do
      url "https://github.com/joh90/slack-cli/releases/download/v#{version}/slack-darwin-amd64"
      sha256 "PLACEHOLDER_SHA256_AMD64"

      def install
        bin.install "slack-darwin-amd64" => "slack"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/joh90/slack-cli/releases/download/v#{version}/slack-linux-amd64"
      sha256 "PLACEHOLDER_SHA256_LINUX"

      def install
        bin.install "slack-linux-amd64" => "slack"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
