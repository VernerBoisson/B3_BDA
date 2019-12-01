# Mise en place d'un serveur de replication

1. Créez une fichier Docker-compose.yml qui lance deux instances MariaDB
   
    [docker-compose.yml](./docker-compose.yml)

2. Ajoutez les fichiers de configurations pour les serveurs Master et Slave
   
    [master.cnf](./configs/master.cnf)
    
    [slave.cnf](./configs/slave.cnf)

    `- ./configs/master.cnf:/etc/mysql/mariadb.conf.d/master.cnf`

3. Créez un script pour ajouter l'utilisateur avec les droits de replication sur master

    [replicant_slave.sql](./scripts/replicant_salve.sql)

4. Assurez vous que les deux instances de base de données contiennent les mêmes données
5. Démarrez le serveur master
6. Ajoutez le master au slave

    [add_master_to_slave.sql](./scripts/add_master_to_slave.sql)

7. Démarrez et vérifiez l'état du slave
   
    `START SLAVE;`

    `SHOW SLAVE STATUS \G`

8. Créez une nouvelle base de données et une nouvelle table sur le serveur Master et vérifier que les données sont présentes sur le serveur slave