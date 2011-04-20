##!/bin/bash
. $WRF_BASE/WRF.env
cd $WRF_BASE/src
tar zxf cache/${APP}.${EXT}
mv ${DIR} $WRF_ROOT
cd $WRF_ROOT
wget http://www.mmm.ucar.edu/wrf/src/fix/configure_fix.tar
tar xf configure_fix.tar
chmod +x configure
./configure < $WRF_BASE/build/configure.wrf.${COMP}.select
$WRF_BASE/build/configure.wrf.hdf5.sh
./compile em_real &> compile.log
