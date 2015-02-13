freeipa-vagrant
===============

Dependencies
------------
* Vagrant
* vagrant-hosts plugin

Usage
-----

Install vagrant-hosts plugin:
```
vagrant plugin install vagrant-hosts
```

And then:
```
vagrant up
```

A really basic FreeIPA server.

Sets up a domain named "example.org", with both the Directory Manager and admin passwords set to "password".

The module used for installing FreeIPA doesn't seem to be 100% CentOS 7 compatible and will complain about not being able to install a few packages - that can be ignored.

This also forwards ports 443 and 389 as 4443 and 13389, respectively.

You'll probably need to insert an entry into your local hosts file that looks like this in order to use the FreeIPA UI:

```
192.168.65.4 freeipa.example.org
```
