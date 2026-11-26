# Homebrew tools for displays, USB hardware, lighting and fitness equipment

Install the tool for the device or file you have. All nine packages run on Apple Silicon with macOS 14 or later. PDProbe and UVCpipe also ship for x86-64 Linux. Each includes a command-line tool and an MCP server.

## Try a display calculation

This example checks whether a four-lane USB-C display link can carry a 3840 × 1080 side-by-side image at 60 Hz. It runs without a connected display or a license key.

```sh
brew install raydeoliveira/tap/stereoweave
stereoweave edid budget --width 3840 --height 1080 --hz 60 --link usbc-4lane --json
```

StereoWeave 0.1.0 returned `"requiredGbps":6.271`, `"linkCapacityGbps":25.92` and `"fits":true` for this mode at 8 bits per component.

## Choose a tool

Install any entry with `brew install raydeoliveira/tap/<formula>`. The example in each row runs locally without attached hardware. Follow the product link for supported devices, paid features and MCP setup.

| Formula | When to use it | First command |
|---|---|---|
| [depthpipe](https://github.com/raydeoliveira/depthpipe) | Render a stereo pair from a 2D image and depth map. Inspect a game's built-in depth settings. | `depthpipe profile --app 1091500 --json` |
| [edidsmith](https://github.com/raydeoliveira/edidsmith) | Decode a monitor's EDID and check the timings it advertises. | `edidsmith edid inspect --fixture xreal-ar-glasses --json` |
| [ergctl](https://github.com/raydeoliveira/ergctl) | Read a Concept2 PM5 or Bluetooth FTMS trainer and export workout data. | `ergctl probe --sim --json` |
| [glassweave](https://github.com/raydeoliveira/glassweave) | Inspect a glasses-free 3D monitor and its eye-tracking camera. | `glassweave probe --fixture samsung-odyssey-3d --json` |
| [luxdmx](https://github.com/raydeoliveira/luxdmx) | Calculate a gel look for an RGBWW light before sending DMX over Art-Net or sACN. | `luxdmx solve --gel L201 --dim 80 --fixture aputure-600c-rgbww --json` |
| [pdprobe](https://github.com/raydeoliveira/pdprobe) | Read USB-C Power Delivery profiles with a Power-Z KM003C or FNIRSI FNB58 meter. | `pdprobe probe --sim --json` |
| [stereoweave](https://github.com/raydeoliveira/stereoweave) | Check stereo display bandwidth or convert between side-by-side 3D and MV-HEVC spatial video. | `stereoweave edid budget --width 3840 --height 1080 --hz 60 --link usbc-4lane --json` |
| [uvcpipe](https://github.com/raydeoliveira/uvcpipe) | View HDMI from a USB capture card in a local MJPEG viewer. | `uvcpipe probe --sim --json` |
| [xrctl](https://github.com/raydeoliveira/xrctl) | Inspect AR glasses profiles and the display modes and sensors each profile defines. | `xrctl probe --fixture xreal-air --json` |

To remove a tool installed from this tap, run `brew uninstall raydeoliveira/tap/<formula>`. For free and Pro editions, see the [software catalog and pricing](https://www.raymonddeoliveira.com/software).
