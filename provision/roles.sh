#! /bin/sh

#make current dir same as file dir
SCRIPT_DIR=`dirname $0`

roles=(
"gano2018.ansible_os_init"
"gano2018.ansible_git"
"gano2018.ansible_gitflow"
"gano2018.ansible_anyenv"
"gano2018.ansible_each_env_install"
"gano2018.ansible_dwave_ocean_sdk_setup"
)

for role in ${roles[@]}
do
  ansible-galaxy install $role --roles-path ${SCRIPT_DIR}/roles/
done
