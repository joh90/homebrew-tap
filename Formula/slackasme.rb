class Slackasme < Formula
  desc "Slack CLI - interact with Slack as yourself"
  homepage "https://github.com/joh90/slackasme"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joh90/slackasme/releases/download/v#{version}/slack-darwin-arm64"
      sha256 "6692d056b7db25cd8199c3d6f934f01b0fc5713630f7e9d1f252e2a54bb13904"

      def install
        bin.install "slack-darwin-arm64" => "slackasme"
      end
    end

    on_intel do
      url "https://github.com/joh90/slackasme/releases/download/v#{version}/slack-darwin-amd64"
      sha256 "e3083a6ea967bd4396765e3af8a520ce66cc0c15d7e8fff7a673cbf1f6e800f0"

      def install
        bin.install "slack-darwin-amd64" => "slackasme"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/joh90/slackasme/releases/download/v#{version}/slack-linux-amd64"
      sha256 "9f07bd298ca98a2b8fc3f40608241ec6c93a59ae73444ffa56becf542870c751"

      def install
        bin.install "slack-linux-amd64" => "slackasme"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackasme --version")
  end
end
