
### How to set up the cluster profile for Matlab Distributed Computing Engine  

- First, check and load the matlab version you need. 

  > $ module spider matlab   
  > $ module load matlab/R2024a   

- The help scripts for setting up the cluster profile is located in  

  `/data/apps/extern/matlab/matlab_parallel_server`

  So we need to launch matlab and go into the folder.  

  > $ matlab -nodesktop -nosplash  
  > \>\> cd /data/apps/extern/matlab/matlab_parallel_server/scripts
  > \>\> configCluster

  **Note: running configCluster.m is needed for every version of Matlab at least once.**

- The cluster profile `rockfish` is created and saved in `$HOME/.matlab/`
  We can inspect the cluster profile with

  > \>\> rf = parcluster('rockfish')  

  
