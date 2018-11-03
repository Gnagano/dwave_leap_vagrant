Automatic setting for Leap api (quantum computing cloud environment) programming on Vagrant
===

# Overview

This repository allow you to build [Leap api](https://cloud.dwavesys.com/leap/login/?next=/leap/) (quantum computin cloud environment) programming automatically on Vagarnt.
After building, the sample code is also downloaded, so you can try to compute quantom computing (aneealing) soon!!

This repository's environment building is accroding to [D-Wave Ocean Software Documtentaion](https://docs.ocean.dwavesys.com/en/latest/index.html).
You can skip [Installing Ocean Tools](https://docs.ocean.dwavesys.com/en/latest/index.html),[Python Vietual Environment](https://docs.ocean.dwavesys.com/en/latest/index.html) and [Install Ocean Software](https://docs.ocean.dwavesys.com/en/latest/index.html)

# Dependency

you need set up `Vagrant` and `Virtualbox` before using this repository.
The Vagrantfile in this repository boot Ubuntu16.04, so you need to know about it.

# Setup

## 1. clone this repository

```
$ git clone https://github.com/gano2018/dwave_leap_vagrant.git
$ cd dwave_leap_vagrant
```

## 2. vagrant up

Execute `vagrant up`

```
$ vagrant up
```

Also start provisioning, so it may takes a while.

## 3. vagrant ssh

Execute `vagrant ssh` and access the virtual machine.

```
$ vagrant ssh
```

　and please check if `dwave` is installed or not.

```
$ which dwave
/opt/anyenv/envs/pyenv/shims/dwave
```

　if return nothing, you need to `vagrant destory` and `vagrant up` again.

# Usage

You can use quantum aneealing computing now!
Learn how to use it by [D-Wave Ocean Software Documtentaion](https://docs.ocean.dwavesys.com/en/latest/index.html).

# How to execute sample codes

When your setup is done, [some sample codes](https://github.com/gano2018/dwave_leap_programming_test) are automatically cloned at `/home/vagrant/dwave_sample`.
Write how to excecute them below.

## 1. Create your account at [D-Wave Leap](https://cloud.dwavesys.com/leap/login/).

## 2. After login, you can get `API TOKEN` and `Solver API endpoint`. Those two are required to use sample codes.

## 3. Configure a D-Wave System as a Solver

　When executing `dwave config create` like below,
　interactive dialog is starging.

  ```
  $ dwave config create
  Configuration file not found; the default location is:
  Confirm configuration file path (editable):
  Profile (create new): prod
  API endpoint URL (editable): <YOUR_API_ENDPOINT!!!!>
  Authentication token (editable): <YOUR_API_TOKEN!!!!>
  Client class (qpu or sw): qpu
  Solver (can be left blank): My_DWAVE_2000Q
  Proxy URL (can be left blank):
  Configuration saved.
  ```

　You need to put
　`Solver API endpoint` at `API endpoint USL(editable)`
  `Authentication token (editable)` at `API TOKEN` you get at leap mypage.
  `qpu` at `Client class (qpu or sw)`
  `any name you want` at `Solver(can be left blank)`

　For the detail, please read [Configuring a D-Wave System as a Solver](https://docs.ocean.dwavesys.com/en/latest/overview/dwavesys.html#dwavesys)

## 4. Rename the file dwave_sample/config/account.py.default as dwave/sample/config/account.py.Then edit the constant `LEAP_API_TOKEN` like below.

  ```
  LEAP_API_TOKEN='YOUR_API TOKEN'
  ```

　Additioinally, rename the file dwave_sample/config/config.py.default to dwave_sample/config/config.py.<br>
　Then edit the constant `API_ENDPOINT` and `SOLVER_NAME` like below.

  SOLVER_NAME is the name you put when asked `Solver(can be left blank)` on `dwave config create`

  ```
  API_ENDPOINT='YOUR_API_ENDPOINT'
  SOLVER_NAME='YOUR_SOLVER_NAME'
  ```

## 5. Excecute sample code

　Just execute sample python code like below.

  ```
  $ python dwave_sample/sample/019vetex_cover/021wheel_graph_dwave.py
  ```

  In the sample directory, the name of direcoties and python files consist of 3 digits number and name of directory or file. The 3 digit number represents the referenced page of [D-Wave Ocean Software Documentaion](https://docs.ocean.dwavesys.com/en/latest/index.html)

  So, please check the 3 digit number of the name and read the correspondent page of documentaion if you know about the codes.

  For the detail, please read [dwave_leap_programming_test](https://github.com/gano2018/dwave_leap_programming_test)
