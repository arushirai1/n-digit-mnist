mkdir -p data

  wget http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz -O data/train-images-idx3-ubyte.gz
  wget http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz -O data/train-labels-idx1-ubyte.gz
  wget http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz -O data/t10k-images-idx3-ubyte.gz
  wget http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz -O data/t10k-labels-idx1-ubyte.gz

gzip -d data/train-images-idx3-ubyte.gz
gzip -d data/train-labels-idx1-ubyte.gz
gzip -d data/t10k-images-idx3-ubyte.gz
gzip -d data/t10k-labels-idx1-ubyte.gz

mv data/train-images-idx3-ubyte data/train-images.idx3-ubyte
mv data/train-labels-idx1-ubyte data/train-labels.idx1-ubyte
mv data/t10k-images-idx3-ubyte data/t10k-images.idx3-ubyte
mv data/t10k-labels-idx1-ubyte data/t10k-labels.idx1-ubyte

