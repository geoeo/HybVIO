cd /workspaces/HybVIO/
./src/slam/download_orb_vocab.sh
mkdir target && cd target
export CC=clang 
export CXX=clang++ 
cmake -DBUILD_VISUALIZATIONS=ON -DUSE_SLAM=ON ..
make -j6