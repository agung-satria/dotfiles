==========Install dulu zsh, oh-my-zsh, dan powerlevel10k==============
comment or delete *zsh-syntax-highlighting* line, in .zshrc before next step

just use zsh and this plugins below:
SYNTAX HIGHLIGHTNING
cdg (cd ~/.mygithub)
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
Then, enable syntax highlighting in the current interactive shell:
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

note:
use Luke Smith prompt (delete all *prompt* in zshrc if it installed)

xxxxxxxxxxxxxxxxxxxxxxxxxxxx probably fail and messy notes:
============x==========ZSH SYNTAX HIGHLIGHTNING=======================
===Change directory
cd ~/.mygithub/dotfiles/zshrc/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

===Add the syntax-highlighting extension to the .zshrc file:
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

===Enable the syntax-highlighting in current shell by sourcing the file with the command:
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

===If you have the oh-my-zsh framework installed for your ZSH shell, you can add the zsh-syntax-highlighting as a plugin.
===Start by cloning the repository as:
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

===Finally, add the zsh-syntax-highlighting as the plugin in your .zshrc file as: (CEK MANUAL)
plugins=( zsh-syntax-highlighting)

===To apply the changes to your current terminal session, enter the command:
source ~/.zshrc

===DONE!!!===
=======================ZSH SYNTAX HIGHLIGHTNING=======================

Notes:
the aliases (aliasrc and shortcutrc) is in ~/.config/shell directory!!
