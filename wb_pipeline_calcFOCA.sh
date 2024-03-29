#!/bin/bash
input_dir=$1  # /data
output_dir=$2
combs_project_id=$3

FOCA_TR = $4  #default:2

echo '************** wb_pipeline_calcFOCA START *******************'
sleep 1s

echo '-----------Input_Config_Start--------------'
echo 'input_dir='$input_dir
echo 'output_dir='$output_dir
echo 'combs_project_id='$combs_project_id
echo 'FOCA_TR='$FOCA_TR
echo '------------Input_Config_End---------------'
sleep 3s

#--matlab config--
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/MATLAB/MATLAB_Runtime/v90/runtime/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v90/bin/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v90/sys/os/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v90/sys/java/jre/glnxa64/jre/lib/amd64/native_threads:/usr/local/MATLAB/MATLAB_Runtime/v90/sys/java/jre/glnxa64/jre/lib/amd64/server:/usr/local/MATLAB/MATLAB_Runtime/v90/sys/java/jre/glnxa64/jre/lib/amd64
export XAPPLRESDIR=/usr/local/MATLAB/MATLAB_Runtime/v90/X11/app-defaults
export MCR_CACHE_VERBOSE=true
export MCR_CACHE_ROOT=/tmp

/root/matlab_script/wb_pipeline_FOCA $input_dir $output_dir /file_buf/brain_mask.nii FOCA_TR #[TR] 

echo '************** wb_pipeline_calcFOCA END *******************'
