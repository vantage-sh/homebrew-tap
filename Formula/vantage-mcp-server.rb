class VantageMcpServer < Formula
  desc "MCP Server for accessing the https://vantage.sh API for costs and usage data"
  homepage "https://github.com/vantage-sh/vantage-mcp-server"
  url "https://github.com/vantage-sh/vantage-mcp-server/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "a7e7cab3afcd06e5b842c43b0953ca93b5d309d8c1df8c2020fdaacbbce4d0be"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/vantage-mcp-server", "--version"
  end
end
