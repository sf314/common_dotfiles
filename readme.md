Guide:
To install these on a new system, you'll need to get the current system
to load the files.

To make things easy, you can simply run the `setup_box.sh` script to 
perform steps 1 thru 3.

0: Clone
Clone this repository in your home folder for easy access.

1: Install packages
sudo apt-get install vim git gcc g++ make net-tools
sudo apt-get install gcc-multilib g++-multilib python-qt4 pyqt4-dev-tools python-zmq

2: Install custom bashrc
In the existing bashrc, add the following line:
```
. ~/common_dotfiles/.bashrc
```
This will allow the new content to be used with the existing content, while
ensuring that the new bashrc can still be easily updated with a `git pull`

3: Install the new .vimrc
Assuming vim is already installed and ready to go, you can simply copy
the vimrc from the repo into your home directory. This one isn't gonna be 
updateable thru `git pull`

4: Setting up ssh
