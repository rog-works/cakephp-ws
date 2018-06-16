CakePHP Workspace
===

# Requirements

* Docker
* docker-compose

# Usage

* git clone

```bash
$ git clone git@github.com:rog-works/cackephp-ws.git
$ cd cackephp-ws
```

* setting email

```
$ vim docker-compose.yml
- GMAIL_ADDRESS=user@gmail.com
↓
- GMAIL_ADDRESS=${your gmail user name}@gmail.com

- GMAIL_PASSWORD=password
↓
- GMAIL_PASSWORD=${your gmail login password}
```

* start containers

```
$ docker-compose up -d
```

* install CakePHP

```bash
$ docker-compose exec app bash

[app]$ curl -L https://github.com/cakephp/cakephp/tarball/2.10.8 -o cakephp.tar.gz
[app]$ tar zxvf cakephp.tar.gz
[app]$ mv cakephp-cakephp-49e689f/lib ./
[app]$ rm -fr cakephp-cakephp-49e689f
[app]$ rm -f cakephp.tar.gz
```

* access application

```
$ curl -k https://localhost:18081/tests
```
