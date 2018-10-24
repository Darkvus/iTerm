# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

export PATH="/Applications/MAMP/Library/bin:$PATH"
source "$HOME/.sdkman/bin/sdkman-init.sh"
alias brackets='open -a /Applications/Brackets.app/'
alias dia='DISPLAY=:0 /Applications/Dia.app/Contents/Resources/bin/dia'

