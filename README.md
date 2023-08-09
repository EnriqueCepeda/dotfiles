# My dotfiles

These are my dotfiles for debian-based distributions and Mac OS, which uses [Oh my zsh](https://github.com/robbyrussell/oh-my-zsh/) as a shell framework

It also uses the following plugins

| PLUGINS |
| ------- |
| [Syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) |
| [Zsh autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) |
| [Z tabulator](https://github.com/junegunn/fzf) |

It uses [Space promptship](https://github.com/denysdovhan/spaceship-prompt) as main theme
(If you use it on Mac OS, check out this [problem](https://github.com/powerline/fonts/issues/248#issuecomment-350831564) with fonts

## Execution

To install the basic tools of this setup along with oh-my-zsh run

```sh
   make bootstrap
```

For basic tools installation run

```sh
   source basic-bootstrap.sh
```

For oh-my-zsh installation run

```sh
   source oh-my-zsh.sh
```

For python installation run

```sh
   source python.sh
```

For configuration restart run

```sh
  source restart-config.sh
```


