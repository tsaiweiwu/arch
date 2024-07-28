
### Create an environment with virtualenv from python/3.8.6 modulefile

- load python module

  `$ ml load python/3.8.6`   

- create the env

  `$ python -m venv /path_to_new_env`   
   
- activate the env
 
   `$ source /path_to_new_env/bin/activate`   

- check where your python is from  
  `$ which python`  
  `$ which pip`

- pip install packages
    
- leave the virtual environment  

   `$ deactivate`

- **There is a problem of mpi4py with this installation method**  

### Install tensorflow-gpu

- get an interactive job on a gpu node

  `$ interact -p a100 -N1 -n6 --gres=gpu:1 -t 60`       

  wait for the job to start ...

- load necessary modules

  `$ module load anaconda/2020.07 cuda/11.8.0 cudnn/8.0.4.30-11.1-linux-x64`   

- create a conda env

  `$ conda create -n tf python=3.10` 

  tensorflow supports python 3.8-3.11 (https://www.tensorflow.org/install)   
  
- make sure python is from the conda env  

  `$ conda activate tf`  
  `$ which python`  

- install tensorflow-gpu

  `$ pip install tensorflow-gpu==2.9.3`

  it might also need tensorRT

  `$ pip install tensorrt==8.6.1`  
  `$ pip install tensorrt-cu11==10.2.0.post1`  
  `$ pip install tensorflow-gpu==2.9.3`

  TensorRT libraries is in `lib/python3.10/site-packages/tensorrt_libs`
  
- test

  `python -c "import tensorflow as tf; print('Num GPUs Available: ', len(tf.config.list_physical_devices('GPU')))"`   

  
