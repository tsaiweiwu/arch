### Advance Research Computing at Hopkins

- Resource List

  <img width="508" alt="arch_resource" src="https://github.com/tsaiweiwu/arch/assets/10214345/06c6608f-adeb-4806-90a4-57375846d33e">

- GPU billing  

  for a100 partition, there are 4 gpus and 48 cpus per node, which maps to 12 cpus for 1 gpu.   
  Therefore, (1 gpu + <= 12 cpus) x 1 hour is equal to 12 SU.   

  for ica100 partition, there are 4 gpus and 64 cpus per node, which maps to 16 cpus for 1 gpu.   
  (1 gpu + <= 16 cpus) x 1 hour is equal to 16 SU.  

  Note gpu number is also tied to cpu number, i.e. 12 cpu for 1 gpu.  
  If one gpu and 13 cpus are allocated for one hour, it will be billed for 2 gpus, which is 24SU on a100 partition.    
