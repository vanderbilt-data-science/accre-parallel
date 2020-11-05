#!/bin/bash
#SBATCH --mail-user=<my.email@vanderbilt.edu>
#SBATCH --mail-type=ALL
#SBATCH --account=p_dsi
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=00:10:00        # 10 minutes
#SBATCH --mem=500M
#SBATCH --array=1-5
#SBATCH --output=R_slurmjob_%A_task_%a.out

#Load the relevant modules using Lmod
module load GCC OpenMPI R

#Run the R desired R script using the desired file inputs
Rscript --vanilla vectorize.R 1000 ${SLURM_ARRAY_TASK_ID}
