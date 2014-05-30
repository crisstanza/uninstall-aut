#!/bin/sh
clear

cd bin
rm -Rf *
cd ..

cd build
rm -Rf *
cd ..

cd src
../jdk1.6.0_14/bin/javac -classpath .:../lib/uninstall.jar -d ../build *.java
cd ..

cd build
../jdk1.6.0_14/bin/jar cmfv ../META-INF/MANIFEST.MF ../bin/uninstall-aut.jar -C ../build UninstallAut.class -C ../src UninstallAut.java -C .. make.sh
cd ..

cp uninstall-aut.* bin
cp lib/uninstall.jar bin
cp README bin
