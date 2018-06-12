## Docker Container List

Laradock docker container list

### Port Configuration
Customize mapping port environments for docker-compose.yml

```bash
##  LIST CONTAINER NAME & PORTS
## +==========+============+==================================+
## |   INITIALIZE PORTS    |                                  |
## +-----------------------+         CONTAINER NAME           |
## |   CUST*  |   EXPOSE   |                                  |
## +==========+============+==================================+
## |   8100   |     8080   |  adminer                         |
## +----------+------------+----------------------------------+
## |   8101   |     3000   |  aerospike - service             |
## |   8102   |     3001   |  aerospike - fabric              |
## |   8103   |     3002   |  aerospike - heartbeat           |
## |   8104   |     3003   |  aerospike - info                |
## +----------+------------+----------------------------------+
## |   8105   |       80   |  apache2 (http)                  |
## |   8106   |      443   |  apache2 (https)                 |
## +----------+------------+----------------------------------+
## |   8107   |       22   |  aws                             |
## +----------+------------+----------------------------------+
## |   8108   |    11300   |  beanstalkd                      |
## |   8109   |     2080   |  beanstalkd-console              |
## +----------+------------+----------------------------------+
## |   8110   |       80   |  caddy (http)                    |
## |   8111   |      443   |  caddy (https)                   |
## |   8112   |     2015   |  caddy                           |
## +----------+------------+----------------------------------+
## |   8113   |       22   |  certbot                         |
## +----------+------------+----------------------------------+
## |   8114   |     4200   |  cratedb (http)                  |
## |   8115   |     4200   |  cratedb (http)                  |
## |   8116   |     4300   |  cratedb (transport)             |
## |   8117   |     5432   |  cratedb (postgres)              |
## +----------+------------+----------------------------------+
## |   8118   |     9200   |  elasticsearch                   |
## |   8119   |     9300   |                                  |
## +----------+------------+----------------------------------+
## |   8120   |     3000   |  grafana                         |
## +----------+------------+----------------------------------+
## |   8121   |       80   |  haproxy                         |
## +----------+------------+----------------------------------+
## |   8122   |     9000   |  hhvm                            |
## +----------+------------+----------------------------------+
## |   8123   |     8080   |  jenkins (web)                   |
## |   8124   |    50000   |  jenkins (slave agent)           |
## +----------+------------+----------------------------------+
## |   8125   |     5601   |  kibana                          |
## +----------+------------+----------------------------------+
## |   8126   |     3000   |  laravel-echo-server             |
## +----------+------------+----------------------------------+
## |   8127   |       80   |  maildev (http)                  |
## |   8128   |       25   |  maildev (ssh)                   |
## +----------+------------+----------------------------------+
## |   8129   |     1025   |  mailhog                         |
## |   8130   |     8025   |                                  |
## +----------+------------+----------------------------------+
## |   8131   |     3306   |  mariadb                         |
## |   8132   |     3306   |  mysql                           |
## |   8133   |     3306   |  percona                         |
## +----------+------------+----------------------------------+
## |   8134   |    11211   |  memcached                       |
## +----------+------------+----------------------------------+
## |   8135   |       22   |  minio                           |
## +----------+------------+----------------------------------+
## |   8136   |    27017   |  mongodb                         |
## +----------+------------+----------------------------------+
## |   8137   |     1433   |  mssql                           |
## +----------+------------+----------------------------------+
## |   8138   |     7474   |  neo4j                           |
## |   8139   |     1337   |                                  |
## +----------+------------+----------------------------------+
## |   8140   |       80   |  nginx                           |
## +----------+------------+----------------------------------+
## |   8141   |       80   |  pgadmin                         |
## +----------+------------+----------------------------------+
## |   8142   |       80   |  phpfpm (only) - workspace       |
## |   8143   |     9090   |  phpfpm (only) - xdebug          |
## +----------+------------+----------------------------------+
## |   8144   |       80   |  phpmyadmin                      |
## +----------+------------+----------------------------------+
## |   8145   |     9000   |  portainer                       |
## +----------+------------+----------------------------------+
## |   8146   |     5432   |  postgresql                      |
## |   8147   |     5432   |  postgresql-postgis              |
## +----------+------------+----------------------------------+
## |   8148   |       22   |  python                          |
## |   8149   |       22   |  python3                         |
## +----------+------------+----------------------------------+
## |   8150   |    15671   |  rabbitmq                        |
## |   8151   |    15672   |                                  |
## +----------+------------+----------------------------------+
## |   8152   |     6379   |  redis                           |
## +----------+------------+----------------------------------+
## |   8153   |     8080   |  rethinkdb                       |
## +----------+------------+----------------------------------+
## |   8154   |       22   |  ruby                            |
## |   8155   |     3000   |  rails (ruby on rails)           |
## |   8156   |     9000   |  rails + webpack                 |
## +----------+------------+----------------------------------+
## |   8157   |     4444   |  selenium                        |
## +----------+------------+----------------------------------+
## |   8158   |     9983   |  solr                            |
## +----------+------------+----------------------------------+
## |   8159   |     8080   |  swagger-ui                      |
## |   8160   |     8092   |  swagger-data                    |
## +----------+------------+----------------------------------+
## |   8161   |     8080   |  spark (master)                  |
## |   8162   |     8881   |  spark (worker)                  |
## +----------+------------+----------------------------------+
## |   8163   |       22   |  terraform                       |
## +----------+------------+----------------------------------+
## |   8164   |     8080   |  varnish                         |
## +----------+------------+----------------------------------+
## |   8165   |       22   |  vim                             |
## +----------+------------+----------------------------------+
## |   8200   |     9000   |  domikado-phpfpm                 |
## |   8201   |       22   |  domikado-php-worker             |
## |   8202   |       22   |  domikado-workspace              |
## +----------+------------+----------------------------------+
## |   8300   |     9093   |  alertmanager                    |
## |   8301   |     3000   |  caddy grafana                   |
## |   8302   |     9090   |  caddy prometheus                |
## |   8303   |     9091   |  caddy pushgateway               |
## |   8304   |     9093   |  caddy alertmanager              |
## |   8305   |     3000   |  cadvisor                        |
## |   8306   |     9100   |  nodeexporter                    |
## |   8307   |     9090   |  prometheus                      |
## |   8308   |     9091   |  pushgateway                     |
## +----------+------------+----------------------------------+
## |   9901   |       80   |  workspace (phpfpm)              |
## |   9902   |     9090   |  workspace (xdebug)              |
## +----------+------------+----------------------------------+
##  *) Customize port for Docker Framework
##  Required (must included)
##  - Container "consul"
##  - Container "grafana"
##  - Container "portainer"
```

### Core Container
* - [X] alpine core-base (core-base).
* - [X] alpine core-base-consul (core-base-consul).
* - [X] alpine core-consul (core-consul).
* - [X] alpine workspace phpfpm-5.6 (workspace).
* - [ ] debian workspace phpfpm-5.6 (workspace).
* - [X] alpine workspace phpfpm-7.2 (workspace).
* - [ ] debian workspace phpfpm-7.2 (workspace).

### API Tools Container
* - [ ] debian swagger-ui 3.0 (swagger-ui).
* - [ ] debian swagger-data (swagger-data).

### Cache Container
* - [X] alpine memcached 1.5 (memcached).
* - [X] alpine redis 3.2 (redis).
* - [X] alpine redis 4.0 (redis).

### Database Container
* - [ ] alpine cratedb 2.3 (cratedb).
* - [X] debian mariadb 10.2 / 10.3 (mariadb).
* - [X] debian mongodb 3.4 / 3.6 / 3.7 (mongodb).
* - [X] debian mysql 5.7 (mysql).
* - [X] debian mysql 8.0 (mysql).
* - [X] debian percona 5.6 / 5.7 (percona).
* - [X] debian postgresql 9.6 (postgres).
* - [X] debian postgresql 10 (postgres).
* - [ ] debian rethinkdb 2.3 (rethinkdb).

### Database Tools Container
* - [X] alpine adminer 4.6 (adminer).
* - [X] alpine phpmyadmin 4.8 (phpmyadmin).
* - [X] ubuntu pgadmin4 release 3.0 (pgadmin).

### Deployment Tools
* - [X] ruby [capistrano][]
* - [X] php [deployer][]
```
Running Task Deployment Capistrano
  type: [env] = production / staging
    => cap [env] deploy
    => cap [env] nginx:manual_restart
    => cap [env] phpfpm:manual_restart
    => cap [env] composer:install
    => cap [env] composer:update
    => cap [env] composer:dumpautoload
    => cap [env] artisan:clear_view
    => cap [env] artisan:clear_cache
    => cap [env] artisan:clear_all
```

### Mail Container
* - [ ] alpine maildev 1.0 (maildev).
* - [ ] alpine mailhog 1.0 (mailhog).

### Monitoring Container
* - [X] debian grafana 5.1 (grafana).
* - [X] alpine portainer 1.16 (portainer).

### Webserver Container
* - [X] alpine nginx (nginx).
* - [X] alpine apache2 2.4 (apache2).
* - [X] debian apache2 2.4 (apache2).

### Others
* - [X] ubuntu aerospike 3.16 (aerospike).
* - [X] ubuntu aerospike 4.0 (aerospike).
* - [X] alpine elasticsearch 2.4 (elasticsearch).
* - [X] alpine elasticsearch 5.6 (elasticsearch).
* - [X] alpine solr 7.2 (solr).
* - [X] alpine solr 7.3 (solr).
* - [X] alpine spark-master 2.1 (spark-master).
* - [X] alpine spark-worker 2.1 (spark-worker).
* - [X] alpine terraform 0.10 (terraform).
* - [ ] alpine vim 2.8 (vim).

[capistrano]:https://github.com/capistrano/capistrano
[deployer]:https://github.com/deployphp/deployer