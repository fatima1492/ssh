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

/share/apps/colabfold-1.5.2/localcolabfold/colabfold-conda/bin/colabfold_batch --templates --use-gpu-relax ricestring/Q8H5T7_OJ1294_F06.11.fasta  results/
