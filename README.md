# raydeoliveira/homebrew-tap

Official Homebrew tap for Raymond de Oliveira's Spatial / 3D Display CLI & MCP tools.

## Install

```bash
brew tap raydeoliveira/tap

# Install the Spatial / 3D Display Wedge
brew install edidsmith xrctl depthpipe glassweave

# Or install the all-in-one StereoWeave utility
brew install stereoweave
```

## Included Formulas

| Formula | Purpose |
|---|---|
| `edidsmith` | Clean-room EDID 1.4 / CTA-861 / DisplayID 2.1 parser, CVT-RB2 link-budget solver, quirk catalog & rollback override CLI + MCP server |
| `xrctl` | C17 4-vendor AR glasses CLI + MCP server (2D/3D SBS rollback, tint, 120Hz, wear sensor, 1000Hz IMU) |
| `depthpipe` | Live 2D-to-3D stereo depth pipeline, Metal DIBR weaver, bidirectional MV-HEVC Spatial Video converter & SteamOS Vulkan Z-buffer layer |
| `glassweave` | Cross-OS eye-tracked glasses-free 3D display CLI + MCP server (DDC/CI & USB-HID lens switching, UVC eye tracking, lenticular shaders) |
| `stereoweave` | All-in-one Apple Silicon macOS EDID 3D/RGB-4:4:4 unlock, Metal stereo weaver & MV-HEVC Spatial Video converter |
