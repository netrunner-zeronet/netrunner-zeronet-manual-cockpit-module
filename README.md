# Netrunner Zeronet Manual Cockpit module

The cockpit module for zeronet manual. The manual is written using [markdown language](https://en.wikipedia.org/wiki/Markdown).

## Generate html files

### Prerequisite

You need to have [pandoc](http://pandoc.org) installed.

On unix : `$ apt install pandoc`

### Generate

You can use the build script :
```
$./build.sh
```

Then anything needed for the plugin is inside the generated `dist` folder.

## plugin structure

```
.
├── advanced-section-for-developers.html
├── advanced-section.html
├── appendix.html
├── assemble-hardware.html
├── img
│   ├── cockpit-login.png
│   ├── cockpit-update.png
│   └── cockpit-zeronet.png
├── manifest.json
├── manual.html
├── prerequisite.html
├── wizard.html
└── zeronet.html
```
