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

/share/apps/colabfold-1.5.2/localcolabfold/colabfold-conda/bin/colabfold_batch --templates --use-gpu-relax ricestring/A0A0P0W767_CC-1_Q0DI31.fasta  results/
