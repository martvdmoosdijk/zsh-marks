# zsh-marks

zsh-marks is a [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) plugin which allows the user to create bookmarks and quickly go to them.

## How to install 

Put the script in the oh-my-zsh plugins folder
```
    cd ~/.oh-my-zsh/custom/plugins
    git clone git@github.com:martvdmoosdijk/zsh-marks.git
```

Activate the plugin in your .zshrc file
```
    vim ~/.zshrc
    plugins=( [...plugins] zsh-marks)
```

Source or restart your terminal
```
    source ~/.zshrc
```

## How to use

* `marks` - Show your saved bookmarks
* `mark [directory] [name]` - Saves the directory under the given name
* `unmark [name]` - Removes the mark
* `goto [name]` - Goes to the mark

## Other info

* Marks are saved in the `MARKPATH` ($HOME/.marks).


