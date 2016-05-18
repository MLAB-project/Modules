# For fresh Ubuntu 64bit needs to install tools:
#     sudo apt-get install build-essential

# On 64bit system you need 32bit library support to build 32bit application:
#     sudo apt-get install g++-multilib

# Just compile and link the target executable:
#gcc mlab_xvcd*.cpp lib_linux/i386/libftd2xx.a   -m32 -lstdc++ -ldl -lpthread -lrt -Os -o mlab_xvcd_i386
gcc mlab_xvcd*.cpp lib_linux/x86_64/libftd2xx.a -m64 -lstdc++ -ldl -lrt -Os -o mlab_xvcd_x86_64
