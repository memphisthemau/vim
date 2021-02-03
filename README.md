# Setting up themes

- Create a local directory for the repositories.

```bash
mkdir -p ~/gitrepos && cd $_
```

- Clone the themes.

```bash
git clone https://<token>@github.com/memphisthemau/vim.git
git clone https://github.com/dracula/vim.git dracula-vim
git clone https://github.com/joshdick/onedark.vim.git
```

- Create the necessary directories.

```bash
mkdir -p ~/.vim/{autoload,colors}
```
- Copy the themes.

```bash
cp ~/gitrepos/dracula-vim/autoload/dracula.vim ~/.vim/autoload/dracula.vim
cp ~/gitrepos/dracula-vim/colors/dracula.vim ~/.vim/colors/dracula.vim
cp ~/gitrepos/onedark.vim/autoload/onedark.vim ~/.vim/autoload/onedark.vim
cp ~/gitrepos/onedark.vim/colors/onedark.vim ~/.vim/colors/onedark.vim
```

- Copy the custom highlights.

```bash
cp -a ~/gitrepos/vim/vimfiles/after ~/.vim/
```

- Create symlink for `.vimrc`.

```bash
ln -s ~/gitrepos/vim/.vimrc ~/.vimrc
```

- Enable syntax highlighting.

```bash
:colo[rscheme] {onedark|dracula}
```

# Setting file extension detection and syntax highlighting

```bash
ln -s ~/gitrepos/vim/vimfiles/ftdetect ~/.vim/ftdetect
ln -s ~/gitrepos/vim/vimfiles/syntax  ~/.vim/syntax
ln -s ~/gitrepos/vim/vimfiles/after ~/.vim/after
```
