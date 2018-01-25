# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# remove a dir with contents:
rm -fdr <dir_name>
uses: rm -fdr All_database_processed/
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
nvidia-smi
---------------------------
nvidia-smi --format=csv --query-gpu=temperature.gpu,fan.speed,pstate,power.draw,clocks.current.graphics
nvidia-smi --format=csv,noheader --query-gpu=temperature.gpu,fan.speed,pstate,power.draw,clocks.current.graphics
nvidia-smi --format=csv --query-gpu=index,name,temperature.gpu,fan.speed,pstate,power.draw,clocks.current.graphics

Output: 0, GeForce GTX 1080 Ti, 78, 46 %, P2, 178.71 W, 1797 MHz
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
Find files or folders in Ubuntu:
- find -name "\*ASR\*" : find all file/dir name include ASR
- find -typy d -name "\*ASR\*" : find all *dir* name include ASR
- find -type f -name "*libcudart*"   : find all files libcudart.so.* in current folder
- find -type f -name "*libcudnn.so*"   : find all files libcudnn.so.*
















