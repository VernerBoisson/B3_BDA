# Importer une base de données MySQL en MariaDB

Utilisez la configuration docker-compose précédente afin d'instancier un serveur MySQL et un serveur MariaDB qui partagent un dossier /backups commun.

Connectez vous en premier au serveur MySQL, créez une base de données avec au moins une table qui contient quelques données.

Exportez cette base de données dans le dossier /backups.

Connectez vous au serveur MariaDB et importez la base que vous venez d'exporter.
