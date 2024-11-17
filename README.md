# dotfiles
These are all of my dotfiles. You may use them for any use that you want, but make sure you understand what it's doing before adding them to your system. 

## Installation
To use any of these files in your own system you can run the following:
```bash
git clone https://github.com/tomScheers/dotfiles.git
cd dotfiles
```
Now you have all of your files on your system, now you have some options:
### 1. Move files to right destination:
Depending on your system, you have to move the files to a specific location (E.G. ~/.bashrc for your bashrc on Linux based systems of Mac OS). You can do that with the following command
```bash
mv <file/dir you want to move> <new location>
```
So taking the bashrc as an example (assuming your in the dotfile root path):
```bash
mv bash/bashrc ~/.bashrc
```
**⚠️ATTENTION⚠️**:  
If you want to move an entire directory (e.g., for Neovim), be sure to add /* to the path to get all of its contents:
```bash
mv nvim/* ~/.config/
```
If you need to move a multitude of files (e.g., ```bashrc``` and ```bash_aliases```), make sure tu more them all:
```bash
mv bash/bashrc ~/.bashrc
mv bash/bash_aliases ~/.bash_aliases
```

### 2. Making a symbolic link:
You can also make a symbolic link to the correct path, this will make it so that the files are still in the dotfiles directory and there is just a pointer to them.
```bash
ln -s <file/dir you want to make a symbolic link of> <location where the symbolic link should go>
```

For example for your nvim config you would run:
```bash
ln -s $PWD/nvim ~/.config/nvim
```
This makes a symbolic link of the entire directory add the right location

### 3. Copy-pasting entire file to the right file  
You can manually copy and paste individual files from the repository to their appropriate locatoins on your system.

## Customization
Feel free to modify any of these files. For example:
- To customize your Bash prompt, edit ~/.bashrc.
- To change Neovim settings, adjust ~/.config/nvim/init.lua

## Contributions
If you'd like to contribute to these dotfiles, feel free to fork the repo and submit it via a pull request! Or make your own fork of my dotfiles and configure some things youself.
