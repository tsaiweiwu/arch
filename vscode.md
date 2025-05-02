
## Running Vscode with Port Tunneling and ProxyJump on Rockfish

- This enables users to run native vscode client on your local machine on the compute nodes 

- Background: Visual Studio Code (VScode) is a popular IDE which allows ...

  Problem: Many users isntall vscode on their laptops and connect to the cluster login nodes with the Remote-SSH extension. Each of this session takes up login node resources and can possibly bring the server down when there are too many of such sessions. 

- Workaround: Port Tunneling and ProxyJump

  The basic steps are   
  
  1) Open a builtin terminal from your laptop, e.g. Powershell for Windows.  

     Log into rockfish `$ ssh -l $USER login.rockfish.jhu.edu`       

  2) Create a folder in $HOME, e.g. vscode  

     `$ mkdir $HOME/vscode`    
     `$ cd $HOME/vscode`  

  3) Run **vscode-server.sh** to generate the slurm script (This only needs to be done once)

     $ /data/apps/helpers/vscode.sh -n 1 -c 11 -t 00:30:00 -p shard

     This will generate **VSCode-Server.slurm.script**
     Exam the slurm script to make necessary changes.  

  5) Submit the slurm script to start the vscode server on the compute node  
 
     $ sbatch VSCode-Server.slurm.script  

  6) Find out which compute node you are allocated   
     $ sqme   

     For example, if I am getting the compute node `sr07`  

     <img width="925" alt="image" src="https://github.com/user-attachments/assets/f042ed3c-6eb0-437f-ae9a-a65868365610" />

  8) Go back to your local vscode and type the following in the local terminal
  
     `$ ssh -J $USER@login.rockfish.jhu.edu $USER@sr07`     

     Please replace the $USER with your cluster user ID.
     
     Or add the following section into your .ssh/config file   

     ```
      Host sr07
         HostName sr07
         User $USER
         ForwardX11 yes
         ForwardX11Trusted yes
         ProxyJump $USER@login.rockfish.jhu.edu     
     ```

  9) Work with vscode as you normally would     

 
