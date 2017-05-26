#!/bin/sh

#MSUB -q psmall
#MSUB -l nodes=64
#MSUB -l partition=vulcan
#MSUB -l walltime=5:00:00
#MSUB -V
#MSUB -l gres=lscratchv

rm -f partxyz*
rm -f partdata*
rm -f b3d0.f*
echo rarefaction > SESSION.NAME
echo `pwd`'/' >> SESSION.NAME
rm -f rarefaction.sch
srun -N64 -n64 ./nek5000 > output.txt-n64-lb-mod500
