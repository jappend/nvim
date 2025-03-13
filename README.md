### What is this repo?
My config from NeoVim, just clone this repo's content to `~/.config/nvim` or wherever your nvim folder is located.

#### Requirements:
Depending on the language, you may need to download some LSP's.

Make sure you have node package manager (npm) installed in order for the Live Server plugin to work. Also install the Live
Server plugin globally (this build should do it for you, but to avoid bugs, do it yourself).
```
sudo npm install -g live-server
```

---
Download [RipGrep](https://github.com/BurntSushi/ripgrep) to make the LiveGrep work and [fd](https://github.com/sharkdp/fd) for some extended capabilities.

Just download xclip, or any other clipboard provider.
##### Arch Linux:
```
sudo pacman -S xclip
```

Remember to use `:checkhealth {plugin}` if you're having a hard time fixing an error in this vim build. Not every single solution and requirement is here so keep that in mind.

Hope you enjoy! This repo is being actively updated according to my needs.
