class Slackasme < Formula
  desc "Slack CLI - interact with Slack as yourself"
  homepage "https://github.com/joh90/slackasme"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joh90/slackasme/releases/download/v#{version}/slackasme-darwin-arm64"
      sha256 "d5a26e170142ae415a559437b5af9ff5a3077d652db9d9756f32044cbbd0bfc7"

      def install
        bin.install "slackasme-darwin-arm64" => "slackasme"
      end
    end

    on_intel do
      url "https://github.com/joh90/slackasme/releases/download/v#{version}/slackasme-darwin-amd64"
      sha256 "438dd3a9ba1a0ca80898c4630c7c30eb9811e23cba6e3e32cadbe00d365c2718"

      def install
        bin.install "slackasme-darwin-amd64" => "slackasme"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/joh90/slackasme/releases/download/v#{version}/slackasme-linux-amd64"
      sha256 "4ca319fa84a2d4e5276288dad5ed418c38fde398d25ca636c9e12953ae0e834d"

      def install
        bin.install "slackasme-linux-amd64" => "slackasme"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackasme --version")
  end
end
