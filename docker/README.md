## Docker Container List

Laradock docker container list

### Port Configuration
Customize mapping port environments for docker-compose.yml

```bash
 LIST CONTAINER NAME & PORTS
+==========+===========+==================================+
|   PORT   |  DEFAULT  |  CONTAINER NAME                  |
+==========+===========+==================================+
|   8100   |    8080   |  adminer                         |
+----------+-----------+----------------------------------+
|   8101   |    3000   |  aerospike - service             |
|   8102   |    3001   |  aerospike - fabric              |
|   8103   |    3002   |  aerospike - heartbeat           |
|   8104   |    3003   |  aerospike - info                |
+----------+-----------+----------------------------------+
|   8105   |      80   |  apache2                         |
+----------+-----------+----------------------------------+
|   8106   |    9200   |  elasticsearch                   |
|   8107   |    9300   |                                  |
+----------+-----------+----------------------------------+
|   8108   |    3306   |  mariadb                         |
|   8109   |    3306   |  mysql                           |
|   8110   |    3306   |  percona                         |
+----------+-----------+----------------------------------+
|   8111   |   11211   |  memcached                       |
+----------+-----------+----------------------------------+
|   8112   |   27017   |  mongodb                         |
+----------+-----------+----------------------------------+
|   8113   |      80   |  nginx                           |
+----------+-----------+----------------------------------+
|   8114   |      80   |  pgadmin                         |
+----------+-----------+----------------------------------+
|   8115   |      80   |  phpfpm (only) - workspace       |
|   8116   |    9090   |  phpfpm (only) - xdebug          |
+----------+-----------+----------------------------------+
|   8117   |      80   |  phpmyadmin                      |
+----------+-----------+----------------------------------+
|   8118   |    9000   |  portainer                       |
+----------+-----------+----------------------------------+
|   8119   |    5432   |  postgresql                      |
+----------+-----------+----------------------------------+
|   8120   |    6379   |  redis                           |
+----------+-----------+----------------------------------+
|   8121   |      22   |  ruby                            |
+----------+-----------+----------------------------------+
|   8122   |    8983   |  solr                            |
+----------+-----------+----------------------------------+
|   8123   |    8080   |  spark - master                  |
|   8124   |    8881   |  spark - worker                  |
+----------+-----------+----------------------------------+
|   8125   |      22   |  terraform                       |
+----------+-----------+----------------------------------+
|   8126   |      22   |  vim                             |
+----------+-----------+----------------------------------+
|   8901   |      80   |  workspace phpfpm                |
|   8902   |    9090   |  Workspace xdebug                |
+----------+-----------+----------------------------------+
 Required (must included)
  - Container "consul"
  - Container "portainer"    
```

### Core Container
* - [X] alpine core-base (core-base).
* - [X] alpine core-base-consul (core-base-consul).
* - [X] alpine core-consul (core-consul).
* - [X] alpine workspace phpfpm-5.6 (workspace).
* - [X] alpine workspace phpfpm-7.2 (workspace).

### Cache Container
* - [X] alpine memcached 1.5 (memcached).
* - [X] alpine redis 3.2 (redis).
* - [X] alpine redis 4.0 (redis).

### Database Container
* - [X] debian mysql 5.7 (mysql).
* - [X] debian mysql 8.0 (mysql).
* - [X] debian mariadb 10.2 / 10.3 (mariadb).
* - [X] debian percona 5.6 / 5.7 (percona).
* - [X] debian postgresql 9.6 (postgres).
* - [X] debian postgresql 10 (postgres).
* - [X] debian mongodb 3.4 / 3.6 / 3.7 (mongodb).

### Database Tools
* - [X] alpine adminer 4.6 (adminer).
* - [X] alpine phpmyadmin 4.8 (phpmyadmin).
* - [X] ubuntu pgadmin4 release 3.0 (pgadmin).

### Deployment Tools
* - [X] ruby [capistrano](https://github.com/capistrano/capistrano)
* - [X] php [deployer](https://github.com/deployphp/deployer)
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

### Monitoring
* - [ ] ubuntu grafana (grafana).
* - [X] alpine portainer 1.16 (portainer).

### Webserver
* - [X] alpine nginx (nginx).
* - [ ] alpine apache2 (apache).

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
