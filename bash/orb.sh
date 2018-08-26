#!/bin/bash

#SBATCH -p short
#SBATCH -J orb6
#SBATCH --export=NONE
#SBATCH -t 2-00:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=adbe@gwu.edu

export PATH="/groups/engstromgrp/anaconda3/bin:$PATH"
source activate Ryan_CondaEnvP2.7

spfeas -i Sri_Lanka_subset_6_v2.tif -o Sri_Lanka_subset_6_orb_v2 --vis-order rgb --block 1 --scales 31 51 71 --tr orb


