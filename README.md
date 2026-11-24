# raydeoliveira/homebrew-tap

> **Product Hub & Comparison:** [raymonddeoliveira.com/software](https://www.raymonddeoliveira.com/software) · **Spatial 3D Wedge Complete Bundle ($49, save $57):** [Polar Bundle Checkout](https://buy.polar.sh/polar_cl_KTtCY3iQC4bzjqp93aC6LCog8UZqzZzuDgkAs3BvF74) · **All Pro Licenses:** [Polar Storefront](https://polar.sh/raymond-de-oliveira) · **Verified MCP Servers:** [Glama Directory](https://glama.ai/mcp/servers?query=raydeoliveira)

Official Homebrew tap for Raymond de Oliveira's hardware, LAN lighting, and Spatial / 3D Display CLI & MCP tools.

## Install

```bash
brew tap raydeoliveira/tap

# Install the Spatial / 3D Display Wedge
brew install edidsmith xrctl depthpipe glassweave

# Or install the all-in-one StereoWeave utility
brew install stereoweave

# Or install the zero-driver Art-Net 4 / sACN LAN lighting CLI & MCP server
brew install luxdmx

# Or install the open FTMS & Concept2 PM5 fitness ergometer CLI, AI coach & MCP server
brew install ergctl

# Or install the USB-C PDO auditor, telemetry reader & PD/PPS trigger CLI & MCP server
brew install pdprobe

# Or install the USB UVC HDMI capture, localhost viewer & CH9329 serial HID CLI + MCP server
brew install uvcpipe
```

## Included Formulas

| Formula | Purpose |
|---|---|
| `edidsmith` | Clean-room EDID 1.4 / CTA-861 / DisplayID 2.1 parser, CVT-RB2 link-budget solver, quirk catalog & rollback override CLI + MCP server |
| `xrctl` | C17 4-vendor AR glasses CLI + MCP server (2D/3D SBS rollback, tint, 120Hz, wear sensor, 1000Hz IMU) |
| `depthpipe` | Live 2D-to-3D stereo depth pipeline, Metal DIBR weaver, bidirectional MV-HEVC Spatial Video converter & SteamOS Vulkan Z-buffer layer |
| `glassweave` | Cross-OS eye-tracked glasses-free 3D display CLI + MCP server (DDC/CI & USB-HID lens switching, UVC eye tracking, lenticular shaders) |
| `stereoweave` | All-in-one Apple Silicon macOS EDID 3D/RGB-4:4:4 unlock, Metal stereo weaver & MV-HEVC Spatial Video converter |
| `luxdmx` | Zero-driver macOS LAN lighting CLI & MCP server for Art-Net 4 and ANSI E1.31 sACN ([Pro $29](https://buy.polar.sh/polar_cl_Gk5jd6VHJSUwKgvf186L8EyTDH8s4OsNmQOvG491AaB) · [Glama](https://glama.ai/mcp/servers/raydeoliveira/luxdmx)) |
| `ergctl` | Open Bluetooth SIG FTMS & Concept2 PM5 ergometer CLI, TUI, FIT exporter, bidirectional AI coach & MCP server ([Pro $29](https://buy.polar.sh/polar_cl_yZX7OxANm5KpsXGmC233dm9mMCtARhSPMuFjw0XfvhT) · [Glama](https://glama.ai/mcp/servers/raydeoliveira/ergctl) · [MCP Registry](https://registry.modelcontextprotocol.io/v0.1/servers?search=raydeoliveira/ergctl)) |
| `pdprobe` | C17 macOS & Linux USB-C PDO auditor, telemetry reader & PD/PPS trigger CLI + MCP server for Apple Silicon, KM003C & FNB58 ([Pro $29](https://buy.polar.sh/polar_cl_oS3ab3YwDFdjshc4Fd3dTqa6cGsnJKJyHUnlt2fWdQz) · [Glama](https://glama.ai/mcp/servers/raydeoliveira/pdprobe)) |
| `uvcpipe` | C17 macOS & Linux USB UVC HDMI capture, localhost MJPEG viewer & CH9329 serial HID CLI + MCP server ([Pro $19](https://buy.polar.sh/polar_cl_ZYe4DgatGrujYxoXUQ80f2zwwuM71Jspoxdew1Iac1c) · [Glama](https://glama.ai/mcp/servers/raydeoliveira/uvcpipe)) |
