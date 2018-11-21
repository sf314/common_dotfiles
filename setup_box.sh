# Install desired files and programs to a new box

# Get directory of this repo:
COMMON_DOTFILES_DIR=$(pwd)
echo "Setting directory of common_dotfiles to $COMMON_DOTFILES_DIR"

### Set package manager
echo "Setting package manager..."
PMAN=unknown
if [ $(which apt-get) ]; then
    PMAN=apt-get
    echo "Using apt-get"
fi 

if [ $(which yum) ]; then
    PMAN=yum 
    echo "Using yum"
fi 

### 1: Programs: use provided PM to do so 
echo "Installing common programs"
sudo $PMAN install vim git gcc g++ make cmake net-tools

echo "Installing Core Flight System dependencies"
sudo $PMAN install gcc-multilib g++-multilib python-qt4 pyqt4-dev-tools python-zmq

### 2: bashrc: source the version-controlled bashrc from the existing one
echo "Configuring bashrc... "
if [ -f $HOME/.bashrc ]; then
    echo "Modifying existing bashrc"
    echo "" >> $HOME/.bashrc
    echo "# Appended custom bashrc below:" >> $HOME/.bashrc
    echo ". $COMMON_DOTFILES_DIR/.bashrc" >> $HOME/.bashrc
else
    echo "No existing bashrc, creating new one"
    touch $HOME/.bashrc 
    echo "# Appended custom bashrc below:" >> $HOME/.bashrc
    echo ". $COMMON_DOTFILES_DIR/.bashrc" >> $HOME/.bashrc
fi 

### 3: vimrc 
echo "Configuring vimrc..."
cp .vimrc $HOME 
