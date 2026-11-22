class Edidsmith < Formula
  desc "Clean-room EDID 1.4 / CTA-861 / DisplayID 2.1 parser, CVT-RB2 link-budget solver & MCP server"
  homepage "https://github.com/raydeoliveira/edidsmith"
  version "0.1.0"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on macos: :sonoma

  url "https://github.com/raydeoliveira/edidsmith/releases/download/v0.1.0/edidsmith-0.1.0-macos-arm64.tar.gz"
  sha256 "34fc3be0cd948e1428757c37e00f03c75d19dcdb93f5b6f080cc0a6172783b9b"

  def install
    bin.install "edidsmith"
    doc.install "README.md", "LICENSE", "SECURITY.md", "SKILL.md", "server.json"
  end

  test do
    assert_match "edidsmith 0.1.0", shell_output("#{bin}/edidsmith --version")
    describe_json = shell_output("#{bin}/edidsmith --describe")
    assert_match "\"schema_version\":1", describe_json
    assert_match "XREAL Air/One", shell_output("#{bin}/edidsmith edid inspect --fixture xreal-ar-glasses")
  end
end
