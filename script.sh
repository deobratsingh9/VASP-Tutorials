#!/bin/bash
#SBATCH -J 3D-BN
#SBATCH -N 1
#SBATCH --ntasks-per-node=4
#SBATCH -t 000:30:00
#SBATCH -A naiss2025-22-1789

module add VASP/5.4.4.16052018-nsc1-intel-2018a-eb
mpprun --compat el7 vasp_std
