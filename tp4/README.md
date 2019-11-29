# Mettre en place une stratégie de backups

## Première partie :

Créez une image Docker qui contient tous les outils nécéssaires pour mettre en place un système de backup automatique. Vous trouverez des ressources dans le TP 2 et 3 du cours de devops.
Vous pouvez créer votre image en local dans ce cas vous devez me faire parvenir le contenu de votre Dockerfile sinon vous pouvez vous créer un compte sur Docker Hub et uploader votre image dessus, dans ce cas veuillez me donner le lien publique vers votre image.

## Deuxième partie :

Mettez en place une stategie de backups grâce à cron qui génère un dump de la base de données tous les lundis à 17h et génère un fichier comprèssé en format gzip contenant la date de création.

`crontab -e`

```
0 17 * * 1 mysqldump -u root --password=password --all-databases | gzip -9 -c > /backups/all_databases"$(date +%Y-%m-%d_%H:%M:%S)".sql.gz
```

## Troisième partie :

Mettez en place une stategie de backups avec logrotate qui réalise un dump journalier compressé en format bz2 et qui garde les 5 derniers dumps.

`nano /etc/logrotate.d/mysql-backup`

```
/backups/all_databases.sql.bz2 {
daily
rotate 5
nocompress
postrotate
mysqldump -u root -ppassword --all-databases > /backups/all_databases.sql
bzip2 -z /backups/all_databases.sql
endscript
}
```
`touch /backups/all_databases.sql.bz2`