ml Python/3.11.5-env-hpc1-gcc-2023b-eb
python pds-best.py 

Sumo-phonon-plot
sumo-phonon-bandplot --ymin 0 --ymax 42 -f FORCE_CONSTANTS --kpoints "0 0 0, 0.5 0.5 0, 0 0.5 0, 0.5 0 0, 0 0 0" --labels "G, S, Y, X, G" 
sumo-phonon-bandplot --ymin 0 --ymax 42 -f FORCE_CONSTANTS --kpoints "0 0 0, 0.5 0.5 0, 0 0.5 0, 0.5 0 0, 0 0 0" --labels "G, S, Y, X, G" --dos -q 124 124 1



Phonopy code:  
module load Miniforge/24.7.1-2-hpc1
conda activate /proj/snic2022-22-1230/users/x_deosi/myphonopy

phonopy-bandplot
phonopy-pdosplot projected_dos.dat -i 1,2,3,4,5,6,7,8 -o phonopypdosplot.png

phonopy-load --mesh 64 64 1 --pdos "1 2 3 4, 5 6 7 8" -p
phonopy-load --band "0.5 0.5 0.5  0.0 0.0 0.0  0.5 0.5 0.0  0.0 0.5 0.0" -p

cp POSCAR-unitcell POSCAR
phonopy --readfc --dim="5 4 1" -p -s -t band.conf
band.conf file contain
ATOM_NAME = P C
DIM = 5 4 1
EIGENVECTORS = .TRUE.
BAND =    0.000   0.000   0.000     0.500   0.000   0.000    0.500  0.500  0.000  0.000   0.500   0.000 0.000 0.000 0.000   
BAND_LABELS= $\Gamma$ X S Y $\Gamma$

BAND_POINTS = 201
BAND_CONNECTION = .TRUE.
XYZ_PROJECTION = .TRUE.
PDOS = 1 2 3 4, 5 6 7 8
*********************
Step 2: phonopy -d --dim="2 2 2" -c POSCAR-unitcell
Step 3: phonopy -p -s -t --dim="2 2 2" -c POSCAR-unitcell band.conf  (Phonon Band)

Step 4: phonopy -p -s -t --dim="2 2 2" -c POSCAR-unitcell pdos.conf  (Phonon DOS)

Step 5: phonopy -p -s -t --dim="2 2 2" -c POSCAR-unitcell mesh.conf  (Thermal Properties)

pdos.pdf
phonopy --readfc --dim="5 4 1" --mesh="64 64 1" -p -s

thermal properties 
phonopy --dim="5 4 1" --readfc -t -p -s --mesh="64 64 1" > thermal.dat

projected pdos
phonopy --readfc --dim="5 4 1" --mesh="64 64 1" --pdos "1, 2, 3, 4, 5, 6, 7, 8"  -p -s
phonopy --readfc --dim="5 4 1" --mesh="64 64 1" --pdos "1 2 3 4, 5 6 7 8"  -p -s

phonon-band and project pdos
phonopy --readfc --dim="5 4 1" --band "0.0 0.0 0.0  0.5 0.0 0.0  0.5 0.5 0.0  0.0 0.0 0.0  0.5 0.0 0.0" --mesh="64 64 1" --pdos "1, 2, 3, 4, 5, 6, 7, 8"  -p -s
