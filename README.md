# Create README for easy install

This is a README to have a idea of what to install when starting in a new computer.

## Windows

For windows we use the following software:

```
WSL: Ubuntu
GlazeWM
Flow Launcher
PowerToys
Firefox Developer Edition
VsCode
Windows Terminal
```

Installing WSL2:

- Open a Windows Terminal as admin
- run the following command

```bash
wsl --install
```

- Follow the instructions to install Ubuntu

Install GlazeWM:

- Run the following command

```bash
winget install GlazeWM
```

- The config file for GlazeWM can be found at `C:\Users\<YOUR_USER>\.glaze-wm\config.yaml`

Install Flow Launcher:

- Run the following command

```bash
winget install "Flow Launcher"
```

Install PowerToys (This is used to change the Caps Lock key to a Esc key):

- Run the following command

```bash
winget install Microsoft.PowerToys -s winget
```

Change Firefox Developer Edition appearance:

- Use PotatoFox Theme

```bash
git clone https://codeberg.org/awwpotato/PotatoFox.git
```

- Install instructions:
  - Use this extensions `Sidebery, Userchrome Toggle Extended, Firefox Color`.
  - Copy the chrome dir and users.js file into your Firefox proiles dir
    - (about:support > Application Basics > Profile Directory), then restart Firefox.
  - Post Install:
    - Press ctrl+shift+1 or cmd+shift+1 -> toggle sidebar collapsing
    - Press ctrl+shift+2 or cmd+shift+2 -> toggle floating navbar
    - Import Sidebery config (Sidebery Settings > Help > Import addon data)
    - Import Firefox Color Theme (Optional)
    - about:addons (url) > Userchrome Toggle Extended preferences > General settings > allow multiple styles to be active together, apply changes
  - about:config tweaks:
    - `uc.tweak.no-window-controls` -> hide window controls

Download fonts:

- https://www.nerdfonts.com/font-downloads
- https://vercel.com/font

---

## Linux

For Linux we use the following software:

```
Homebrew
Nvim
ZSH
Starship
Tmux
```

Install ZSH:

- Run the following command

```bash
sudo apt install zsh
```

- To make zsh the default shell run the following command:

```bash
chsh -s $(which zsh)
```

Install Homebrew:

- Run the following command

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install packages using Homebrew:

- Run the following command

```bash
brew install neovim fzf tmux ripgrep python3 tree git node
```

Install Starship

- Run the following command

```bash
curl -sS https://starship.rs/install.sh | sh
```

---

## Used Software

https://github.com/glzr-io/glazewm

https://github.com/Flow-Launcher/Flow.Launcher

https://github.com/microsoft/PowerToys?tab=readme-ov-file

https://codeberg.org/awwpotato/PotatoFox

https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH

https://brew.sh/
