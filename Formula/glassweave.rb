class Glassweave < Formula
  desc "Preview lenticular 3D displays and eye tracking via CLI or MCP"
  homepage "https://github.com/raydeoliveira/glassweave"
  version "0.1.0"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on macos: :sonoma

  url "https://github.com/raydeoliveira/glassweave/releases/download/v0.1.0/glassweave-0.1.0-macos-arm64.tar.gz"
  sha256 "982d399766d4210dfab619ec9aaecc4109544f49223ed7c6f84a7467247b7c68"

  def install
    bin.install "glassweave"
    pkgshare.install "shaders"
    doc.install "README.md", "LICENSE", "SECURITY.md", "SKILL.md", "server.json"
  end

  test do
    assert_match "glassweave 0.1.0", shell_output("#{bin}/glassweave --version")
    describe_json = shell_output("#{bin}/glassweave --describe")
    assert_match "\"schema_version\":1", describe_json
    assert_match "Odyssey 3D", shell_output("#{bin}/glassweave probe --fixture samsung-odyssey-3d")
  end
end
