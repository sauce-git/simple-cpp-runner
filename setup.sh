# cmake in build dir
cmake -S . -B build

# link compile_commands.json
ln -s build/compile_commands.json compile_commands.json
