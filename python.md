
### Create a environment with virtualenv

- load python module

  `$ ml load python/3.8.6`   

- create the env

  `$ python -m venv /path_to_new_env`   
   
- activate
 
   `$ source /path_to_new_env/bin/activate`   

- deactivate

   `$ deactivate`  

### Install tensorflow-gpu

- get an interactive job on gpu node

  `$ interact -p a100 -N1 -n12 --gres=gpu:1 -t 60`       

  wait for the job to start ...

- load necessary modules

  `$ module load anaconda cuda/11.8.0`   

- create a conda env

  `$ conda create -n tf python=3.9` 

  tensorflow supports python 3.8-3.11 (https://www.tensorflow.org/install)   
  
- make sure python is from the conda env  

  `$ conda activate tf` 

  `$ which python`  

- install tensorflow-gpu

  `$ pip install tensorflow-gpu` 

  
