# Ansible Role: On anyenv programming language install ( phpenv / pyenv / rbenv )

Ansible Role: Install php / ruby / python with anyenv

## Getting started

```
$ ansible_galaxy install gano2018.ansible_each_env_install --roles-path <your_roles_directory>
```

## Dependencies

- [gano2018.ansible_anyenv](https://github.com/gano2018/ansible_anyenv)

## Role Variables

- install_envs (defined at `defaults/main.yml`)

  You specified the languages you want to install like below.
  Now you can specify only php,python,ruby.

  ```
  install_envs:
    - php
    - ruby
    - python
  ```

- php_version / ruby_version / php_version (defined at `defaults/main.yml`)

  The version you want to install. Specify like below.
  Below example values are default value for each.

  ```
  php_version: 5.6.30
  python_version: 2.7.15
  ruby_version: 2.2.0
  ```
