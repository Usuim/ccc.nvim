# ccc.nvim

**C**reate **C**olor **C**ode in neovim.

Use the colorful sliders, easy, to create any color you want!

- Features
    - No dependency.
    - RGB, HSL, CMYK, and other color space sliders for color creation.
    - Dynamic highlighting of sliders.
    - Restore previously used colors.
    - Selectable output formats.
    - Transparent slider for css functions (e.g. `rgb()`, `hsl()`)
    - Fast colorizer.

- Requirements
    - neovim 0.8+

See [doc](./doc/ccc.txt) for details.

# GIF 

## Seamless mode change

![cccpick](https://user-images.githubusercontent.com/82267684/225461164-a36d4ad3-da49-4124-b957-e0749f14fa05.gif)

## Restore previously used colors

![restore](https://user-images.githubusercontent.com/82267684/225461172-4c3e17af-99b6-4da9-8216-c00dc20c7a40.gif)

## Colorizer

- LSP `textDocument/documentColor` is supported (Requires neovim built-in LSP client).

![image](https://user-images.githubusercontent.com/430272/192379267-7b069281-021a-4ee5-bc65-58def20f9c0d.png)

- Many color formats conforming to CSS Color Module level4 can be highlighted without LSP.

![image](https://user-images.githubusercontent.com/82267684/196505445-fac76002-7344-47f7-84cb-710c3ecbb717.png)

## Use multiple color spaces simultaneously

- Advanced settings
- See wiki

![multi](https://user-images.githubusercontent.com/82267684/225504962-bf71730e-e681-4ee3-8a26-f949b1973e71.gif)
