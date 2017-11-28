#!/bin/bash

echo '-------------------------------------------'
echo 'Clone the Repository'
echo '-------------------------------------------'
git clone https://github.com/FranciscoRafael/mc949-FinalProject.git
cd mc949-FinalProject
echo 'Git PULL'
git pull
cd ..
echo '-------------------------------------------'


echo '-------------------------------------------'
echo 'Install pip'
wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py --user
chmod +x get-pip.py
./get-pip.py
echo '-------------------------------------------'



echo '-------------------------------------------'
echo 'Install SkLearn on Python3'
echo '-------------------------------------------'
pip3 install sklearn
echo '-------------------------------------------'


echo '-------------------------------------------'
echo 'Install Spicy on Python3'
echo '-------------------------------------------'
pip3 install spicy
echo '-------------------------------------------'


echo '-------------------------------------------'
echo 'Performing the code'
echo '-------------------------------------------'	
cd mc949-FinalProject
python3.6 src/main.py

mkdir dlib
cd dlib

#echo '-------------------------------------------'
#echo 'Install CMAKE'
#wget http://www.cmake.org/files/v2.8/cmake-2.8.3.tar.gz
#tar xzf cmake-2.8.3.tar.gz
#cd cmake-2.8.3
#chmod +x ./configure
#./configure --prefix=/opt/cmake
#make
#make install
#echo '-------------------------------------------'

echo '-------------------------------------------'
echo 'Install imutils'
pip3 install --upgrade imutils
echo '-------------------------------------------'

echo '-------------------------------------------'	
echo  'Installing DLIB Library'
echo '-------------------------------------------'	


git clone https://github.com/davisking/dlib.git
cd dlib/examples
mkdir build
cd build
cmake .. 
cmake --build . --config Release
cd dlib/python_examples 
chmod +x ./compile_dlib_python_module.bat
./compile_dlib_python_module.bat
export PYTHONPATH=/path/to/dlib/python_examples:$PYTHONPATH

echo '-------------------------------------------'
echo 'TESTE DLIB'
python3.6 -c "import dlib"
echo '-------------------------------------------'

cd ..
cd ..
cd .. 

pwd


echo '----------------------------------'
echo 'EXECUTE THE LANDMARKS CLASSIFIERS'
echo '----------------------------------'
echo '-------------------------------------------'

echo 'Clone the Repository'
echo '-------------------------------------------'
git clone https://github.com/FranciscoRafael/mc949-FinalProject.git
cd mc949-FinalProject
echo 'Git PULL'
git pull
cd ..
echo '-------------------------------------------'

python3.6 src/land.py