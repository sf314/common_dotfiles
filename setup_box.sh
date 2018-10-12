# Install desired files and programs to a new box

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

### 1: Programs 
echo "Installing common programs"
$PMAN vim git gcc g++ make net-tools

echo "Installing Core Flight System dependencies"
$PMAN gcc-multilib g++-multilib python-qt4 pyqt4-dev-tools python-zmq

### 2: bashrc 
echo "Configuring bashrc... "
if [ -f $HOME/.bashrc ]; then
    echo "Modifying existing bashrc"
    echo "" >> $HOME/.bashrc
    echo "# Appended custom bashrc below:" >> $HOME/.bashrc
    cat .bashrc >> $HOME/.bashrc
else
    echo "No existing bashrc, creating new one"
    cp .bashrc $HOME 
fi 

### 3: vimrc 
echo "Configuring vimrc..."
cp .vimrc $HOME 
