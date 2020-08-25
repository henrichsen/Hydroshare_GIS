#!/bin/bash
# workflow execution script for analysis Analysis2
# auto-generated by /home/gisolve/cybergis/taudem/cmdseqgen.py on 2016-10-13 15:15:54.996070 


# step: pitremove
mpirun -np 20 -f /var/spool/torque/aux//44118.cg-gpu01 /gpfs_scratch/taudem/TauDEM-5.3.5/pitremove  -z results/output/Analysis2.tif   -fel /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2fel.tif  

# step: d8flowdir
mpirun -np 20 -f /var/spool/torque/aux//44118.cg-gpu01 /gpfs_scratch/taudem/TauDEM-5.3.5/d8flowdir  -fel /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2fel.tif  -p /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2p.tif -sd8 /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2sd8.tif  

# step: PeukerDouglas
mpirun -np 20 -f /var/spool/torque/aux//44118.cg-gpu01 /gpfs_scratch/taudem/TauDEM-5.3.5/peukerdouglas -par 0.4 0.1 0.05  -fel /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2fel.tif  -ss /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2ss.tif  

# step: aread8
mpirun -np 20 -f /var/spool/torque/aux//44118.cg-gpu01 /gpfs_scratch/taudem/TauDEM-5.3.5/aread8 -o /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/__hsinputdir/Outlet.shp  -wg /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2ss.tif -p /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2p.tif  -ad8 /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2ssa.tif  

# step: aread8
mpirun -np 20 -f /var/spool/torque/aux//44118.cg-gpu01 /gpfs_scratch/taudem/TauDEM-5.3.5/aread8  -p /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2p.tif  -ad8 /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2ad8.tif  

# step: Dropanalysis
mpirun -np 20 -f /var/spool/torque/aux//44118.cg-gpu01 /gpfs_scratch/taudem/TauDEM-5.3.5/dropanalysis -par 5 500 10 0 -o /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/__hsinputdir/Outlet.shp  -p /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2p.tif -fel /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2fel.tif -ssa /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2ssa.tif -ad8 /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2ad8.tif  -drp /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2drp.txt  

# step: Threshold
mpirun -np 20 -f /var/spool/torque/aux//44118.cg-gpu01 /gpfs_scratch/taudem/TauDEM-5.3.5/threshold  -thresh /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2drp.txt.tif -ssa /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2ssa.tif  -src /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2src.tif  

# step: Streamnet
mpirun -np 20 -f /var/spool/torque/aux//44118.cg-gpu01 /gpfs_scratch/taudem/TauDEM-5.3.5/streamnet -o /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/__hsinputdir/Outlet.shp  -p /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2p.tif -fel /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2fel.tif -ad8 /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2ad8.tif -src /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2src.tif  -w /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2w.tif -ord /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2ord.tif -tree /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2tree.dat -net /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2net.shp -coord /gpfs/largeblockFS/scratch/gisolve/tmp/44118.cg-gpu01/taudem/Analysis2coord.dat  