# docker-apach-proxy

Apache forward proxy

## Build

```bash
$ cp .env-example .env
# Change passwords, port and ServerName in .env
$ mkdir owncert
# Put your custom certificate and key from a valid CA to ./owncert/certificate.pem and
# ./owncert/key.pem.
$ docker-compose build && docker-compose up
# Now try the proxy via curl:
$ curl https://2ip.ru -v --proxy https://user1:nygZMR3z2djB8sJCInFP@your_domain:4512
```
