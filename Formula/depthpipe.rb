class Depthpipe < Formula
  desc "Render 2D to stereo 3D and convert MV-HEVC spatial video on Metal"
  homepage "https://github.com/raydeoliveira/depthpipe"
  version "0.1.0"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on macos: :sonoma

  url "https://github.com/raydeoliveira/depthpipe/releases/download/v0.1.0/depthpipe-0.1.0-macos-arm64.tar.gz"
  sha256 "70a237335362f8549ea6f79ec5974a0927ac606300d36555266d974a628af9a9"

  def install
    bin.install "depthpipe"
    pkgshare.install "vulkan-layer"
    doc.install "README.md", "LICENSE", "SECURITY.md", "SKILL.md", "server.json"
  end

  test do
    assert_match "depthpipe 0.1.0", shell_output("#{bin}/depthpipe --version")
    describe_json = shell_output("#{bin}/depthpipe --describe")
    assert_match "\"schema_version\":1", describe_json
    assert_match "cyberpunk-2077", shell_output("#{bin}/depthpipe profile --app 1091500 --json")
  end
end
