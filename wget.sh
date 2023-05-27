#!/bin/bash

fldir=/lfs/h2/emc/ptmp/emc.lam/rrfs/v0.5.0/prod/rrfs.20230523/00
numfile=`ls $fldir/rrfs.*.prslev.f*.conus_3km.grib2 | wc | awk '{ print $1 }'` 

hour=00

cd $fldir

  num='00 01 02 03 04 05 06 07 08 09 10 11 12 15 18'
  long_fcst_hour="00 06 12 18"
  for ihh in $long_fcst_hour
  do 
    if [ "$hour" == $ihh ]; then
      num='00 01 02 03 04 05 06 07 08 09 10 11 12 15 18 21 24 27 30 33 36 39 42 45 48 51 54 57 60'
    fi
  done

  for inum in $num
  do
    #cp rrfs.t${hour}z.prslev.f0${inum}.conus_3km.grib2  ./tmpgrib
    echo rrfs.t${hour}z.prslev.f0${inum}.conus_3km.grib2
    #ln -f ../rrfs.t${hour}z.prslev.f0${inum}.conus_3km.grib2  .
  done


if [ $numfile > 8 ]; then
   echo $numfile
fi
