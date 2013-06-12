mtlpy36-vagrant-salt-example
============================

This repository contains the example [Salt][salt]-configured [Vagrant][vagrant]
VM that I used in a demo at [Montreal Python 36][mtlpy36] in April 2013.  It
includes examples of package installation, file management, service management
and configuration file watching, and virtualenv management.

[salt]: http://saltstack.com/community.html
[vagrant]: http://www.vagrantup.com/
[mtlpy36]: http://montrealpython.org/2013/03/mp36/

You can follow the construction of the demo through the following tags:

* 0: add basic Vagrantfile
* 1: add basic salt provisioning
* 2: add python packages
* 3: add helloworld app with flask & circus


NB Don't deploy your important Hello World applications via your configuration
management system as in the final step. Set up the infrastructure, but deploy
with an appropriate tool. This was just an example!


Running
-------

You'll need Vagrant and the [`vagrant-salt`][vagrant-salt] plugin installed. To
install Vagrant, follow the [instructions][vagrant-install] on the website or
use your OS package manager. Once you have it installed, `vagrant-salt` is
installed with

```
$ vagrant plugin install vagrant-salt
```

After that, you can run `vagrant up` or `vagrant provision` at each step along
the demo.

For more information, check out the [Vagrant documentation][vagrant-docs] and [Salt documentation][salt-docs]

[vagrant-install]: http://docs.vagrantup.com/v2/installation/index.html
[vagrant-salt]: https://github.com/saltstack/salty-vagrant
[vagrant-docs]: http://docs.vagrantup.com/v2/
[salt-docs]: http://docs.saltstack.com/
