# Mise en place d'un serveur de replication

1. Créez une fichier Docker-compose.yml qui lance deux instances MariaDB
2. Ajoutez les fichiers de configurations pour les serveurs Master et Slave
3. Créez un script pour ajouter l'utilisateur avec les droits de replication sur master
4. Assurez vous que les deux instances de base de données contiennent les mêmes données
5. Démarrez le serveur master
6. Ajoutez le master au slave
7. Démarrez et vérifiez l'état du slave
8. Créez une nouvelle base de données et une nouvelle table sur le serveur Master et vérifier que les données sont présentes sur le serveur slave