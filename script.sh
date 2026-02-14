#!/bin/bash
#SBATCH -J 2D-NiC3
#SBATCH -N 2 --exclusive
#SBATCH --ntasks-per-node=16
#SBATCH -t 000:20:00
#SBATCH -A naiss2025-5-112

module load VASP/5.4.4.16052018-nsc1-intel-2018a-eb
mpprun vasp_xy_std
