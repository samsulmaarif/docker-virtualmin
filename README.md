# Virtualmin installed on Debian Jessie

> Copyright 2017 [Samsul Ma'arif](http://www.samsul.web.id)

## Up and running

To run this container, first we need to pull it

```
$ sudo docker pull samsulmaarif/virtualmin
```

then run with this command:

```
$ sudo docker run -d -i -t --name <name> [--net=<net>] samsulmaarif/virtualmin
```

## Configuring Virtualmin

If you need to manually configure it:

```
$ sudo docker attach <name>
"sh install.sh -f" 
```
and then enter a fully qualified hostname (for example, host.example.com) of the virtualmin host, that has to be resolved by DNS.
