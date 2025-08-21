class VantageMcpServer < Formula
  desc "MCP Server for accessing the https://vantage.sh API for costs and usage data"
  homepage "https://github.com/vantage-sh/vantage-mcp-server"
  url "https://github.com/vantage-sh/vantage-mcp-server/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "f3b75ed80344af0424f804f3a728968e606a6ee78a0452909e465769b3e155f7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/vantage-mcp-server", "--version"
  end
end
