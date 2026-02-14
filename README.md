STM Simulation in VASP:
This repository provides a workflow to simulate STM images using VASP. It covers both constant-height and constant-current modes, including simulations at different tip heights and bias voltages.

Features
Constant-Height & Constant-Current STM simulations
Bias-dependent filled/empty state images
Partial charge density extraction (LDOS)
Example surface slabs and INCAR templates
Post-processing scripts for visualization

Usage
Prepare surface slab (POSCAR, KPOINTS, POTCAR)
Set INCAR for STM mode
Run VASP to get partial charge density
Post-process to generate STM images
Adjust tip height and bias for desired contrast

Resources
Tutorial Video: STM Simulation in VASP: Constant-Height & Constant-Current Modes Explained

# VASP-Tutorials
🧠 VASP Tutorial: Hybrid Functional (HSE06) Band Structure + Projected Bands, DOS, and KPATH Generation
📘 Overview
This repository contains input files, example scripts, and plotting utilities for performing Hybrid Functional (HSE06) based band-structure and density of states (DOS) calculations using VASP.
It accompanies the YouTube tutorial on Hybrid-DFT band structure and projected band analysis from the QMatX (Deobrat) channel.

The tutorial demonstrates how to:
Prepare input files (INCAR, POSCAR, POTCAR, KPOINTS) for Hybrid Functional (HSE06) calculations
Generate KPATH and KPOINTS for high-symmetry band structure plots

Run HSE06 self-consistent and non-self-consistent calculations in VASP
Extract band-structure and DOS data from VASP outputs
Perform post-processing to obtain:
Total Band-Structure
k-resolved Band-Structure
Projected Band-Structure for selected atoms/elements/orbitals
Total and Projected DOS (PDOS)


⚙️ Key Features
📐 KPATH and KPOINTS generation for Hybrid-DFT
🧩 Projected Band-Structure for selected atoms, orbitals, and elements
📊 HSE06 Band-Structure & DOS plotting using Python and VASPKIT
⚛️ HSE06 Workflow: SCF → NSCF → Band → Post-processing
🧠 Examples for 2D materials, including PdTe₂, Graphene, MoS₂, and others

For detailed explanations, watch the full tutorial on
🎥 YouTube: VASP Tutorial — HSE06 Band Structure + Projected Bands, and KPATH Generation
