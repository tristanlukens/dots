```figlet
     _       _
  __| | ___ | |_ ___
 / _` |/ _ \| __/ __|
| (_| | (_) | |_\__ \
 \__,_|\___/ \__|___/
```

# dots

My dotfiles.

---

A power user's dotfiles is their own personal Sagrada Família. It is simply never done. My Sagrada Família is right here. It's been a while since I started this project, and the one before this, dotfiles_old, is years old.

I had my Zach Holman dotfiles modules phase — but now I like to use GNU Stow. Nice and easy. Modules are hell to maintain, because of the difficulty managing aliases et al. I don't really do much programming anymore these days, so a simple setup is all I need. Besides that, I like the idea of minimalism, especially since I suck at shell scripting :p

## ~~Installation~~ Symlink management

These installations are for macOS only.

1. install [homebrew](https://brew.sh)
1. `brew install stow`
1. `git clone https://github.com/tristanlukens/dots.git $HOME/dots`
2. `cd $HOME/dots`
3. `stow .`

---

## Todo

- [ ] write script for managing todos
- [ ] reorganise the READMEs and todos
