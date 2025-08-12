class VantageMcpServer < Formula
  desc "MCP Server for accessing the https://vantage.sh API for costs and usage data"
  homepage "https://github.com/vantage-sh/vantage-mcp-server"
  url "https://github.com/vantage-sh/vantage-mcp-server/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "81fc5c72562e7ad8097039a8c35bfe85acf73b6af93a456fc55047e263ace4fd"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/vantage-mcp-server", "--version"
  end
end
