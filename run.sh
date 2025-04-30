# cmake in build dir
cmake -S . -B build

# build
make -C build

# run
./build/main
