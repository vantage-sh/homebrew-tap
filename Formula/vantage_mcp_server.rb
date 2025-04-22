class VantageMcpServer < Formula
  desc "MCP Server for accessing the https://vantage.sh API for costs and usage data"
  homepage "https://github.com/vantage-sh/vantage-mcp-server"
  url "https://github.com/vantage-sh/vantage-mcp-server/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "6dd868df752cce93cf8abf2b22f3ef01eb482031500955d8baa0dfd9fd139907"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/vantage-mcp-server", "--version"
  end
end
