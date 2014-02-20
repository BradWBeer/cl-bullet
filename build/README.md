First copy the bullet include directory and replace "const btScalar &" with "btScalar". (Someone explain how that works in the first place?)

Then run build.sh to create the swigBullet.cpp, lispBullet.so, swigbullet.lisp (raw cffi bindings), and swigbullet-clos.lisp (the CLOS objects).

Then copy the contents of the files under the proper packages. 

I need to create a makefile for the various platforms. 