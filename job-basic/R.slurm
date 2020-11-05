#!/bin/bash
#SBATCH --mail-user=<my.email@vanderbilt.edu>
#SBATCH --mail-type=ALL
#SBATCH --account=p_dsi
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=00:10:00        # 10 minutes
#SBATCH --mem=5G
#SBATCH --output=R_job_slurm_%A.out

module load GCC OpenMPI R
Rscript --vanilla vectorize.R
# you can also use "R CMD BATCH vectorize.R", and 
# the output will go to a file named vectorize.Rout
