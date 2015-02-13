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

This step takes a *long time* where nothing appears to happen, as it has to generate private keys on a virtual machine. On a 2012 MacBook Pro 2 GHz Intel Core i7 with 16 GB of RAM and an SSD, the `vagrant up` process took about 12 minutes.

About
----

A really basic FreeIPA server.

Sets up a domain named "example.org", with both the Directory Manager and admin passwords set to "password".

This also forwards ports 443 and 389 as 4443 and 13389, respectively.

You'll probably need to insert an entry into your local hosts file that looks like this in order to use the FreeIPA UI:

```
192.168.65.4 freeipa.example.org
```
