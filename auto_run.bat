@echo off
pushd %~dp0

start python a3c_tf_distibute.py --job_name=ps --worker_hosts_num=3
sleep 10

for /l %%a in (0,1,2) do start python a3c_tf_distibute.py --job_name=worker --worker_hosts_num=3 --task_index=%%a



