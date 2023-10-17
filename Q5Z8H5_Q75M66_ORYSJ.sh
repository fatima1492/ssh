#$ -S /bin/bash
#$ -l tmem=15G
#$ -l alphafold=yes
#$ -N colabfold
#$ -wd /home/fshahid/
#$ -j y
#$ -l h_rt=01:00:00
#$ -l gpu=true

hostname
date

/share/apps/colabfold-1.5.2/localcolabfold/colabfold-conda/bin/colabfold_batch --templates --use-gpu-relax ricestring/Q5Z8H5_Q75M66_ORYSJ.fasta  results/
