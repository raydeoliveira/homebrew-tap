class Ergctl < Formula
  desc "Read rowing workouts on Concept2 PM5 and FTMS trainers via CLI or MCP"
  homepage "https://github.com/raydeoliveira/ergctl"
  url "https://github.com/raydeoliveira/ergctl/releases/download/v0.2.0/ergctl-0.2.0-macos-arm64.tar.gz"
  sha256 "9f13397044a1fbd97bf53598b00c165e66663a1c26e02f7097794e2dfd95af3f"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "ergctl"
    doc.install "README.md", "LICENSE", "SECURITY.md", "SKILL.md", "server.json"
  end

  test do
    assert_match "ergctl 0.2.0", shell_output("#{bin}/ergctl --version")
    describe_json = shell_output("#{bin}/ergctl --describe")
    assert_match "\"schema_version\":1", describe_json
    probe_json = shell_output("#{bin}/ergctl probe --sim --json")
    assert_match "\"sim-ftms-bike-1\"", probe_json
  end
end
