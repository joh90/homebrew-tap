class Slackasme < Formula
  desc "Slack CLI - interact with Slack as yourself"
  homepage "https://github.com/joh90/slackasme"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joh90/slackasme/releases/download/v#{version}/slackasme-darwin-arm64"
      sha256 "ddb4e1292d59144a51daaddd20c99018f05d85640b02ff0f00fbec8539fd22ff"

      def install
        bin.install "slackasme-darwin-arm64" => "slackasme"
      end
    end

    on_intel do
      url "https://github.com/joh90/slackasme/releases/download/v#{version}/slackasme-darwin-amd64"
      sha256 "c403c7a2d060ff5887301e9a677b26fbef2fef598ba2d606615fb901cd4270cd"

      def install
        bin.install "slackasme-darwin-amd64" => "slackasme"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/joh90/slackasme/releases/download/v#{version}/slackasme-linux-amd64"
      sha256 "35592e59dff07b27edf3824f2b870cc4d377b4051e36b085910f6f43cf6054e4"

      def install
        bin.install "slackasme-linux-amd64" => "slackasme"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackasme --version")
  end
end
