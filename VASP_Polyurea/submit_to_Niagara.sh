#!/bin/bash
#SBATCH --account=YOUR_ACCOUNT
#SBATCH --nodes=20
#SBATCH --ntasks-per-node=40
#SBATCH --time=23:45:00
#SBATCH --mail-user=YOUR_EMAIL
#SBATCH --mail-type=ALL
#SBATCH --job-name=Comp_0.5_T_ramp

# Information about Niagara is available here: https://docs.computecanada.ca/wiki/Niagara

module load NiaEnv/2019b
module load intel/2020u4
module load intelmpi/2020u4
module use /scinet/niagara/software/commercial/modules
module load vasp/6.1.2

cd $SLURM_SUBMIT_DIR

srun vasp_std