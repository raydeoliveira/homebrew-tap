class Ergctl < Formula
  desc "Bluetooth FTMS & Concept2 PM5 ergometer CLI, AI coaching & MCP server"
  homepage "https://github.com/raydeoliveira/ergctl"
  url "https://github.com/raydeoliveira/ergctl/releases/download/v0.1.0/ergctl-0.1.0-macos-arm64.tar.gz"
  sha256 "b2c010acbef6dff8518d060fd4c361e966cc4ffb3664a06794cf13cd9eb4c23d"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "ergctl"
    doc.install "README.md", "LICENSE", "SECURITY.md", "SKILL.md", "server.json"
  end

  test do
    assert_match "ergctl 0.1.0", shell_output("#{bin}/ergctl --version")
    describe_json = shell_output("#{bin}/ergctl --describe")
    assert_match "\"schema_version\":1", describe_json
    probe_json = shell_output("#{bin}/ergctl probe --sim --json")
    assert_match "\"sim-ftms-bike-1\"", probe_json
  end
end
