
## Running Vscode with Port Tunneling and ProxyJump on Rockfish

- This enables users to run native vscode client on your local machine with the compute nodes

- Background: Vscode is a popular IDE which allows ...

  Many users isntall vscode and Remote-SSH on their laptops and open the Remote-SSH connecting to the cluster login nodes directly. Each of this vscode session takes up login node resources and can possibly bring the server down when there are too many of such sessions. 

- Workaround: Use Port Tunneling and ProxyJump

  The basic steps 
  
  1) Open a built-in terminal from your laptop, e.g. Powershell for Windows.

     Log into rockfish login nodes

     $ ssh -l $USER login.rockfish.jhu.edu  

  2) Create a folder in $HOME, e.g. vscode

     $ mkdir $HOME/vscode
     $ cd $HOME/vscode

  3) Run **vscode-server.sh** to generate the slurm script (This only needs to be done once)

     $ /data/apps/helpers/vscode.sh -n 1 -c 11 -t 00:30:00 -p shard

     This will generate **VSCode-Server.slurm.script**

  4) Submit the slurm script and find out which node you are getting

     $ sbatch VSCode-Server.slurm.script

     $ sqme

  5) Go to your local vscode, and add the following into your config file

     

