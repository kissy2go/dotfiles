# kissy2go dotfiles

## Requirements

* [zsh](https://www.zsh.org/) v5.4 or higher
* [rcm](https://github.com/thoughtbot/rcm)

## Install

```
$ git clone --recurse-submodules git://github.com/kissy2go/dotfiles.git ~/.dotfiles
$ env RCRC=$HOME/.dotfiles/rcrc rcup
```

After the initial installation, being able to run `rcup` without the one-time variable
`RCRC` being set (`rcup` will symlink the repo's `rcrc` to `~/.rcrc` for future
runs of `rcup`). [See
example](https://github.com/kissy2go/dotfiles/blob/master/rcrc).

This command will create symlinks for config files in home directory.
Setting the `RCRC` environment variable tells `rcup` to use standard
configuration options:

* Exclude the `README.md` and `LICENSE.md` files, which are part of
  the `dotfiles` repository but do not need to be symlinked in.
* Give precedence to personal overrides which by default are placed in
  `~/.dotfiles-local`
* Please configure the `rcrc` file if would like to make localally
  overrides in a different directory


## Update

From time to time, should pull down any updates to these dotfiles, and run

```
$ rcup
```

to link any new files and install new vim plugins. **Note** _Must_ run
`rcup` after pulling to ensure that all files in plugins are properly installed,
but be able to safely run `rcup` multiple times so update early and update often!

## Make local customizations

Create a directory for local customizations:

```
$ mkdir ~/.dotfiles-local
```

Put local customizations in `~/.dotfiles-local` appended with `.local`:

* `~/.dotfiles-local/aliases.local`
* `~/.dotfiles-local/gitconfig.local`

For example, `~/.dotfiles-local/aliases.local` might look like this:

```sh
# Productivity
alias todo='$EDITOR ~/.todo'
```

Local `~/.dotfiles-local/gitconfig.local` might look like this:

```
[user]
  name = John Due
  email = john.due@company.com
```

## License

MIT. see [`LICENSE.md`](/LICENSE.md) file.
