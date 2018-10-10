Install anyenv via ansible on CentOS or Ubuntu
===

An ansible role to install anyenv on CentOS or Ubuntu

## Requirements

After running the playbook, reload bash_profile like below.

```
$ exec $SHELL -l
```

## Usage

### Install several envs (rbenv, pyenv, phpenv etc..)

In default, the roles install only pyenv.
Change the variable whose name is "anyenv_install_envs" in defaults/main.yml if you want to do other envs.

### Change anyenv directory

In default, anyenv folder is /opt/anyenv.
If you define {{ user }}, the install directory will be changed to /home/{{ user }}/.anyenv
