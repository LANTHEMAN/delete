#!/bin/bash
#SBATCH --job-name=SGD
#SBATCH --output=ace-job.out
#SBATCH --nodes=1
#SBATCH -n 8
#SBATCH --ntasks=1
#SBATCH --mem=64gb
#SBATCH --time=8:00:00
#SBATCH --gres=gpu:2
date;hostname;pwd

module load cudnn
module load cuda90/toolkit
module load cuda90/blas
module load cuda90/profiler
module load cuda90/nsight
module load cuda90/fft

source ~/SGDvm/bin/activate
python process.py
