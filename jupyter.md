## Run a conda env in the jupyter notebook/lab   

### Firstly create a conda env from the terminal   

- log into rockfish  

- get an interactive job  
  `$ interact -p a100 -N1 -n12 -G1 -t 120 -q qos_gpu -a <your_gpu_account>`   

  wait for your job to start ...     

- load necessary modules  

  `$ ml load anaconda cuda/11.8.0`  
  `$ conda create -n myenv python=3.9`  

- install python packages in the environment   

  `$ conda install -n myenv conda-forge::numpy`   

- install kernal to so it will show up in the jupyter notebook/lab  
  `$ pip install ipython ipykernel`  
  `$ ipython kernel install --user --name="Python(your_env_name)"`

  `$ conda deactivate`  
  
- list and remove kernels

  `$ jupyter kernelspec list`  
  kernels saved in  `$HOME/.local/share/jupyter/kernels/`
  
  `$ jupyter kernelspec remove <kernel_name>`   

### Open OnDemand

- log into JHU VPN  

- open a browser and go to portal.rockfish.jhu.edu  

- click on the "Jupyter Server" 

  fill in the fields and click on the "Launch" button, there are some instructions on the following page describing how to conda create the environment and use it in the jupyter server. 

 
  

