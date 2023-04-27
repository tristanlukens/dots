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

I used to just put all config files without real organisation, then went over to [Zach Holman's way of managing them](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/), but now decided to mirror my home directory's structure and use GNU `stow` to manage symlinks.

Since my last dotfiles project, I've come to the conclusion that I don't need a lot of what I've got configured. Therefore this project is a lot smaller. I have however not written install scripts for everything — maybe Holman's way *is* the better way. I like `stow` tho, so *ik zie wel waar het schip strandt*.

Maybe I'll find a hybrid way to do it.

Also: I've kept alive the old project but renamed it to `dotfiles_old`.

## ~~Installation~~ Symlink management

Install GNU `stow` if you don't have it yet.

1. `git clone https://github.com/tristanlukens/dots.git $HOME/dots`
2. `cd $HOME/dots`
3. `stow .`

<small>Now that I think about it — if you haven't installed anything, you won't have `stow` installed so installation scripts would be too much right?! Idfk, maybe this approach won't last as long as I first thought I would</small>

---

## Todo

- [ ] add install scripts
