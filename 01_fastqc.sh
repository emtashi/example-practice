>nano 01_fastgc.sh
#!/bin/bash
#SBATCH --job-name=fastqc_test # Name the job fastqc_test to the queue 
#SBATCH --time= 0-01:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=etashi@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=fastqc.out # output file
#SBATCH --error=fastqc.out # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=2 # 2 CPUS per job
#SBATCH --mem=4GB # memory limit of 4 GB

module load hb hb-gnu fastqc-0.11.7

mkdir fastqc_out 
fastqc -t 2 -o fastqc_out /hb/groups/kelley_training/rawdata/SST905_1_USR18001328L_HCCVGDMXX_L2_2.fq.gz

# To submit use >sbath 01_fastqc.sh
