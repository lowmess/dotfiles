### Set up a new machine

First things first, let's use zsh.

```bash
# set default shell to zsh
chsh -s $(which zsh)
```

Next, let's install git.

```bash
# assuming macOS
xcode-select --install
```

Now let's clone or download the repo to `~/dotfiles/`.

```bash
cd ~ && git clone https://github.com/lowmess/dotfiles.git
```

Finally, we can run the install script. It's not an executable because I'm lazy.

```bash
cd ~/dotfiles && sh ./install.sh
```

The install script will install tools with `homebrew`, install apps with `cask`, install `nvm` and global node packages, and extend default configs with our own.
