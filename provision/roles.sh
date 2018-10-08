#! /bin/sh

#make current dir same as file dir
SCRIPT_DIR=`dirname $0`

roles=(
"gano2018.ansible_os_init"
#"gano2018.ansible_git"     depended
#"gano2018.ansible_gitflow"
"gano2018.ansible_centos_anyenv"
#"gano2018.ansible_centos_ruby"
#"gano2018.ansible_centos_rails"
)

for role in ${roles[@]}
do
  ansible-galaxy install $role --roles-path ${SCRIPT_DIR}/roles/
done
