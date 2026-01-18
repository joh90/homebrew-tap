class SlackCli < Formula
  desc "Slack CLI - interact with Slack as yourself"
  homepage "https://github.com/joh90/slack-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joh90/slack-cli/releases/download/v#{version}/slack-darwin-arm64"
      sha256 "c7ec4a756bc23da772332d4e81af65d497345d1f4802c17fe876e6e342e59e6f"

      def install
        bin.install "slack-darwin-arm64" => "slack"
      end
    end

    on_intel do
      url "https://github.com/joh90/slack-cli/releases/download/v#{version}/slack-darwin-amd64"
      sha256 "97856ecff665bd3711a9535015cc07b115fa62c53dd9a5aaa53c77634f74c337"

      def install
        bin.install "slack-darwin-amd64" => "slack"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/joh90/slack-cli/releases/download/v#{version}/slack-linux-amd64"
      sha256 "3ca71b26fd8e673520894d66f5b8b8cdfac16d9354fa49cbbf639e2809949b0b"

      def install
        bin.install "slack-linux-amd64" => "slack"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
