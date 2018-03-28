# ghost-terrafrom
Create my [ghost](https://ghost.org/) environment on GCP

## Prerequisites
- environment/account.json
- environment/id_rsa.pub
- environment/id_rsa

## Usage
Create resources
```
$ cd environment
$ terraform init
$ terraform plan
$ terraform apply
```

install ghost by ghost-cli
```
(ssh host)
$ cd /var/www/ghost
$ ghost install
```
