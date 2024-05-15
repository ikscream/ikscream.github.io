[![terraform-fmt](https://github.com/ikscream/ikscream.github.io/actions/workflows/terraform-fmt.yaml/badge.svg)](https://github.com/ikscream/ikscream.github.io/actions/workflows/terraform-fmt.yaml)

## Github checks 

### Terraform fmt

```
terraform fmt -recursive terraform
```

### Helm 

```
As a senior devops, write comments and module documentation with links to documentation to my helm file. Comments should not be on the same line, use line upper to sting to comments. Try to include links to documentation in comments:
```

### Ansible playbbok

```
As a senior devops, write comments and module documentation with links to documentation to my ansible playbook.
Comments should not be on the same line, use line upper to sting to comments.
Include links from documentation in comments to each Ansible module.
Remove trailing spaces.
Name of task should be formed like "Task:: <module> --> <dest>" for example:


# https://docs.ansible.com/ansible/latest/collections/ansible/builtin/systemd_service_module.html
- name: "Task:: ansible.builtin.systemd --> docker"
  ansible.builtin.systemd:

    # Name of the unit. This parameter takes the name of exactly one unit to work with.
    # When no extension is given, it is implied to a .service as systemd.
    # When using in a chroot environment you always need to specify the name of the unit with the extension. For example, crond.service.
    name: docker

    # started/stopped are idempotent actions that will not run commands unless necessary. restarted will always bounce the unit.
    # reloaded will always reload and if the service is not running at the moment of the reload, it is started.
    state: started

    # Whether the unit should start on boot. At least one of state and enabled are required.
    enabled: true
```

### Terraform manifest
```
As a senior devops, write comments and module documentation with links to documentation to my terraform manifest. Comments should not be on the same line, use line upper to sting to comments. Try to include links to documentation in comments:
```

### Jenkins script 

```
As a senior devops, write comments and module documentation with links to documentation to my Jenkins script. Comments should not be on the same line, use line upper to sting to comments. Try to include links to documentation in comments:
```

### Github action
```
As a senior devops, write comments and module documentation with links to documentation to my github action. Comments should not be on the same line, use line upper to sting to comments. Try to include links to documentation in comments:
```
