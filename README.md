# dietmar

## About
A minimal zsh theme for [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) and [Antigen](https://github.com/zsh-users/antigen), based on the dieter and mortalscumbag themes.

![Prompt](https://i.imgur.com/8HQzeX7.png)

## Description
This theme packs maximum information into a compact prompt using smart compression and color-coding for visual clarity. The color palette is intentionally restrained to remain easy on the eyes.

**Features:**
- Failed commands (exit code >0) display a red timestamp with the exit code on the right edge
- SSH connections show a visual indicator
- Git status integration
- Compressed path display

## Installation

### Oh My Zsh

1. Clone this repository into your Oh My Zsh custom themes directory:
   ```bash
   git clone https://github.com/HGZahn/dietmar.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dietmar
   ```

2. Create a symlink to the theme file:
   ```bash
   ln -s ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dietmar/dietmar.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dietmar.zsh-theme
   ```

3. Set the theme in your `~/.zshrc`:
   ```bash
   ZSH_THEME="dietmar"
   ```

4. Reload your shell:
   ```bash
   source ~/.zshrc
   ```

### Antigen

Add the following line to your `~/.zshrc`:
```bash
antigen theme HGZahn/dietmar
```

Then reload your shell:
```bash
source ~/.zshrc
```

## License

MIT License

Copyright (c) 2026 HGZahn

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


