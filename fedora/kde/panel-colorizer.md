# Panel Colorizer Settings (Fedora only)

Panel Colorizer stores its config inside Plasma's `plasma-org.kde.plasma.desktop-appletsrc`,
not a standalone file — so settings are documented here manually instead of version-controlled directly.

## Install
```bash
brew install cmake gettext
sudo dnf install gcc-c++ extra-cmake-modules libplasma-devel kf6-kcoreaddons-devel spectacle python3-dbus python3-gobject

git clone https://github.com/luisbocanegra/plasma-panel-colorizer
cd plasma-panel-colorizer
./install.sh
```

Then add the widget to your panel via:
Right-click panel → Add Widgets → search "Colorizer" → drag onto panel.

## Current setup
- Base preset: **Sleek** (loaded via Presets tab → Load → Apply → OK)

## Appearance tab

### Color (Background)
- Enable: on
- Color source: Custom
- Color: `#1A1B26`
- Alpha: 0.70
- Contrast Correction (Saturation/Lightness): off, both at 0.50 default

### Shape
- Blur custom background (Beta): off
- Radius: enabled, all four corners = 20
- Margin: enabled, top/right/bottom/left = 4 / 4 / 2 / 4
- Padding: disabled (all 0)

### Border
- Enabled: on
- Width: 1.00
- Custom widths: off
- Color enable: on
- Color source: Custom
- Color: `#7AA2F7`

### Panel element settings (scrolled section)
- Native panel Background: off (unchecked)
- Shadow: on (grayed out/inherited)
- Opacity: 0.00
- Floating applets: "Allow changes" on, "Force floating applets" on
- Floating panel: "Remove custom background rounded corners..." off, "Resize panel length..." on
- Hide panel when no widgets visible: off

## Widget Islands tab
- Not currently enabled (Enabled checkbox unchecked)
- Separator widget: `org.kde.plasma.panelspacer` (default, unused)
- Require two separators per island: off
- Blacklist separator widgets: on

## Notes
- Widget must be dragged directly onto the panel bar, not the desktop.
- New widgets sometimes need a cache refresh to appear in the widget browser:
  `kbuildsycoca6`
- Widget Islands (sectioned panel look from reference rice) requires adding separator
  widgets to the panel first — not yet set up on this machine.
