class VantageMcpServer < Formula
  desc "MCP Server for accessing the https://vantage.sh API for costs and usage data"
  homepage "https://github.com/vantage-sh/vantage-mcp-server"
  url "https://github.com/vantage-sh/vantage-mcp-server/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "8e7047864370a6a82b2e14c892a156b67fc070e79ca9d686898477bf3484467c"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/vantage-mcp-server", "--version"
  end
end
