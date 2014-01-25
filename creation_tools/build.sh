swig -c++ -I./bullet/ -cffi  -o swigBullet.cpp swigBullet.i && \
sed -i 's/( :pointer)/(_ :pointer)/g' swigbullet.lisp && \
g++ -shared -I/usr/include/bullet/ -static -lLinearMath -lBulletCollision -lBulletSoftBody -lstdc++ -o lispBullet.so swigBullet.cpp
