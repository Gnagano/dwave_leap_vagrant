# Ansible Role: Install Ocean Software

Ansible Role: Install Ocean Software

## Requirements

- OS: Ubuntu16.04

- git is installed

- python version >= 2.7

## What happen when the role is executed

1. install dwave-ocean-sdk

```
pip install dwave-ocean-sdk
```

2. clone the dwave-ocean-sdk

```
git clone https://github.com/dwavesystem/dwave-ocean-sdk.git /tmp/
cd /tmp/dwave-ocean-sdk
python setup.py install
```
