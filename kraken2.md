
### Building Kraken2 database

- Get an interactive job   
  $ interact -p shared -N1 -n16 -t 240  
  
- Loadi Kraken2/Bracken modules

  $ ml kraken2/2.1.2   
  $ ml foss/2023a   
  $ ml Bracken/2.9-GCCcore-10.3.0    

- Create a directory to build the database
 
  As an example, here, I've created a folder named "database_kraken2"   
  $ cd ~/  
  $ mkdir database_kraken2  
  $ cd database_kraken2/  

- Build Kraken2 database (it takes few hours for library=bacteria)  

   First, we're creating variables for each parameter (just to have a clearer view)   
   $ LIBRARY=bacteria  
   $ DB=NCBI  
   $ THREADS=32  

- Download taxonomy info  
  $ kraken2-build --download-taxonomy --db ${DB} --threads ${THREADS}  

- Download library  
  $ kraken2-build --download-library ${LIBRARY} --db ${DB} --threads ${THREADS} --no-masking  

- Build database (--threads arg. seems problematic here, so no need to set it)  
  $ kraken2-build --build --db ${DB}


### RUNNING BRACKEN

- Replace the line below with the full path to your kraken2 db   
  $ KRAKEN_DB=$HOME/database_kraken2/$DB     
  
- There might be problems setting more than 1 thread here, but you'll be fine using 1   
  $ THREADS=1                                                                            

- Run Bracken  
  $ KMER_LEN=75  
  $ READ_LEN=136  
  $ KRAKEN_INSTALLATION=/data/apps/extern/kraken2/2.1.2  
  $ bracken-build -d ${KRAKEN_DB} -t ${THREADS} -k ${KMER_LEN} -l ${READ_LEN} -x ${KRAKEN_INSTALLATION}  


