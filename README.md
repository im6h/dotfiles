## Dotfiles symlinked with Stow

Install `stow` on your machine and use command to link config repo to your config.

```bash
git clone https://github.com/im6h/dotfiles.git

cd $pwd/dotfiles

stow --target ~/.config .
```
