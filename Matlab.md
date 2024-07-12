
### Getting Started with Parallel Computing using Matlab on Rockfish    

- First, check and load the matlab version you need. 

  > $ module spider matlab   
  > $ module load matlab/R2024a   

- For GUI (Graphical User Interface) usage:

  Launch Matlab GUI
  `$ matlab`    
  
- For CLI (Command Line Interface) usage: 

  Launch Matlab
  `$ matlab -nodesktop -nosplash`   

- Running configCluster.m to create the cluster profile `rockfish` in `$HOME/.matlab`   
  > \>\> configCluster   

  **Note: For now, this step is necessary for the first time of every version of Matlab**  

- To view all the cluster profiles available  
  > \>\> parallel.listProfiles        

  We can get a handle of the cluster profile with  
  > \>\> rf = parcluster('rockfish')   

  ![image](https://github.com/tsaiweiwu/arch/assets/10214345/56e89476-b960-43f1-b6ca-00c0a825c407)

  There are some additional job parameters in the `AdditionalProperties` list
  
  <img width="370" alt="image" src="https://github.com/tsaiweiwu/arch/assets/10214345/d27bd77a-7920-4b10-9786-1aaa64f78f03">

  We set the default partition to `parallel` and the default walltime to 30 minutes. They can be modified with these commands  

  > \>\> rf.AdditionalProperties.Partition = 'shared'  
  > \>\> rf.AdditionalProperties.Partition = '01:00:00'

  Save the handle to the original profile with   
  > \>\> rf.saveProfile

  Or save the handle to a new profile
  > \>\> saveAsProfile(rf, 'new_profile_name')  

- Questions:
  How to copy or rename the cluster Profiles from command line    

  <img width="935" alt="image" src="https://github.com/tsaiweiwu/arch/assets/10214345/12afff58-01a0-4142-9c4d-f06007570494">

  

