CMAKE=/usr/local/bin/cmake

# Go into the saba folder
cd saba

# Remove the existing build folder
rm -rf build

# Create a new build folder
mkdir build
cd build
cmake ..

# Go into the example folder in build
cd mmd_OpenGL

make
