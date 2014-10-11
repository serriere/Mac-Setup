# This shell script is intended to help setup a new Mac
#
#
# Based on instructions here: http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac


# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

# Update the $PATH in your ~/.bash_profile in order to use these tools
# over their Mac counterparts:
$PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

# Automate installation of apps with Cask
brew install caskroom/cask/brew-cask

apps=(
  dropbox
  google-chrome
)
