#!/bin/bash
#SBATCH -J pdte2
#SBATCH -N 2
#SBATCH --ntasks-per-node=16
#SBATCH -t 004:00:00
#SBATCH -A xxxxx

module add VASP/5.4.4.16052018-nsc1-intel-2018a-eb
mpprun --compat el7 vasp_std
