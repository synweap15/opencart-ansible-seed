# opencart-ansible-seed

Minimal installation of OpenCart 2.2.0 seed project, provisioned with Ansible.
Provisioning with Ansible works on both Windows and Linux hosts.

### Prerequisities

You need to have [Vagrant](https://www.vagrantup.com/) installed on your system.

### Installing

1. Clone the repository
2. Run `vagrant up` in the directory
3. Visit `http://localhost:8090`
3. You can enter the admin area here: `http://localhost:8090/admin/`. Use `admin` for both login and password.
4. Play with the code present in the `app` folder

### Variables

System is set up with some predefined variables. Please adjust `Vagrantfile` to your needs for the VM-related configs,
and check out `ansible/roles/opencart/defaults` for the list of variables concerning software configuration.

### Security notes

The `app/upload/install` folder is not removed. Please remove the folder if you intend to use your application anywhere outside
the local box.


### Notes

The `/vagrant` folder inside the VM is mounted inside the VM also without the `x` privilege under `/vagrant_nox`.
There were some issues with older versions of Ansible.

There are some packages of my personal preference installed (`zsh`, `zprezto`, `tmux`) along. :)


## Author

* **Paweł Werda** - [pawel@devsti.me](http://devsti.me)
