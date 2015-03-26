set -e

sudo apt-get install -y g++ subversion automake make libglib2.0-dev pkg-config libpopt-dev libtool flex bison

mkdir gputils
cd gputils
svn checkout svn://svn.code.sf.net/p/gputils/code/trunk/gputils -r 1128 .

./configure
make
make install