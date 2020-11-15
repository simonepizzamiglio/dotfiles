## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Developments/projects/dotfiles`, with `~/dotfiles` as a symlink.) The init script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/simonepizzamiglio/dotfiles.git && cd dotfiles && sh init.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
sh init.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; sh init.sh
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/simonepizzamiglio/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,init.sh}
```

To update later on, just run that command again.

## Dependency Installation

Install dependencies if you're missing them:

```bash
sh deps.sh
```

## Apps Installation

Install apps if you're missing them:

```bash
sh apps.sh
```

## ZSH Installation + oh-my-zsh + spaceship theme installation

Install apps if you're missing them:

```bash
sh zsh.sh
```

### Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults:

```bash
sh macos.sh
```
