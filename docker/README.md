## Docker Container List

Laradock docker container list

### Port Configuration
Customize port environments for docker-compose.yml

```bash
+==========+===========+==================================+
|   PORT   |  DEFAULT  |  CONTAINER NAME                  |
+==========+===========+==================================+
|   8100   |    8080   |  Adminer                         |  
+----------+-----------+----------------------------------+
|   8101   |    3000   |  Aerospike - Service             |
|   8102   |    3001   |  Aerospike - Fabric              |
|   8103   |    3002   |  Aerospike - Heartbeat           |
|   8104   |    3003   |  Aerospike - Info                |
+----------+-----------+----------------------------------+      
|   8105   |      80   |  Apache2                         |
+----------+-----------+----------------------------------+      
|   8106   |    9200   |  Elastic Search                  |
|   8107   |    9300   |                                  |
+----------+-----------+----------------------------------+      
|   8108   |    3306   |  MariaDB                         |
|   8109   |    3306   |  MySQL                           |
|   8110   |    3306   |  Percona                         |
+----------+-----------+----------------------------------+      
|   8111   |   11211   |  Memcached                       |
+----------+-----------+----------------------------------+      
|   8112   |   27017   |  MongoDB                         |
+----------+-----------+----------------------------------+      
|   8113   |      80   |  NginX                           |
+----------+-----------+----------------------------------+      
|   8114   |      80   |  pgAdmin                         |
+----------+-----------+----------------------------------+      
|   8115   |      80   |  PHPfpm Workspace                |
|   8116   |    9090   |  PHPfpm xDebug                   |
+----------+-----------+----------------------------------+      
|   8117   |      80   |  phpMyAdmin                      |
+----------+-----------+----------------------------------+      
|   8118   |    5432   |  PostgreSQL                      |
+----------+-----------+----------------------------------+      
|   8119   |    6379   |  Redis                           |
+----------+-----------+----------------------------------+      
|   8120   |      22   |  Ruby                            |
+----------+-----------+----------------------------------+      
|   8121   |    8983   |  Solr                            |
+----------+-----------+----------------------------------+      
|   8122   |    8080   |  Spark Master                    |
|   8123   |    8881   |  Spark Worker                    |
+----------+-----------+----------------------------------+      
|   8124   |      22   |  Terraform                       |
+----------+-----------+----------------------------------+      
|   8125   |      22   |  Vim                             |
+----------+-----------+----------------------------------+      
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

### Monitoring
* - [ ] ubuntu grafana (grafana).

### Webserver
* - [X] alpine nginx (nginx).
* - [ ] alpine apache2 (apache).

### Others
* - [X] ubuntu aerospike 3.16 (aerospike).
* - [X] ubuntu aerospike 4.0 (aerospike).
* - [ ] alpine elasticsearch 2.4 (elasticsearch).
* - [ ] alpine elasticsearch 5.6 (elasticsearch).
* - [ ] alpine solr (solr).
* - [X] alpine spark-master 2.1 (spark-master).
* - [X] alpine spark-worker 2.1 (spark-worker).
* - [X] alpine terraform 0.10 (terraform). 
