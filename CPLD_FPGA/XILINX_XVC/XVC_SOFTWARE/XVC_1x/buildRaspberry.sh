# Compile on raspberry.
#
# Get source
#
#	sudo apt-get install subversion
#	svn export svn://svn.mlab.cz/MLAB/Modules/CPLD_FPGA/XVC_XILINX/XVC_SOFTWARE/XVC_1x XVC
#
# Compile
#
#	cd XVC
#	chmod +x buildRaspberry.sh
#	buildRaspberry.sh
#
# Copy udev rules
#
#	sudo cp BIN/10-MLAB*.ules /etc/udev/rules.d
#
# Run the daemon
#
#	mlab_xvcd_arm926vfp
#
# Just compile and link the target executable:
gcc mlab_xvcd*.cpp lib_linux/arm926vfp/libftd2xx.a -ldl -lpthread -lrt -Os -o mlab_xvcd_arm926vfp
