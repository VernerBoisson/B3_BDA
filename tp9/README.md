# Créer des dashboard avec Grafana

1. Créez un nouveau dashboard
2. Ajoutez un panel avec un graphique du taux d'opérations READ

`mysql_global_status_commands_total{command="select"}`

3. Ajoutez un panel qui affiche simplement le nombre total de tentatives de connexion refusées

`mysql_global_status_aborted_connects`

4. Ajoutez un panel sous forme de compteur (gauge) qui affiche le temps nécéssaire à l'exporter pour scrapper les données liées aux connections depuis le serveur MariaDB, trouvez un format et des limites adaptées.

`mysql_exporter_collector_duration_seconds{collector="connection"}`



Importez ce dump de base de données et ajoutez le en tant que source dans votre instance grafana

1. Ajoutez un panel qui affiche un graph avec les comptes utilisateurs créés par jour
```
SELECT
  created_at AS "time",
  customer_group_id
FROM sylius_customer
WHERE
  $__timeFilter(created_at)
ORDER BY created_at
```
2. Ajoutez un panel qui affiche le nombre total de clients
```
SELECT
  $__timeGroupAlias(created_at,$__interval),
  sum(id) AS "id"
FROM sylius_customer
WHERE
  $__timeFilter(created_at)
GROUP BY 1
ORDER BY $__timeGroup(created_at,$__interval)
```
3. Ajoutez un compteur le nombre de payments de la semaine dernière
```
SELECT
  $__timeGroupAlias(created_at,$__interval),
  sum(id) AS "Total"
FROM sylius_payment
WHERE
  $__timeFilter(created_at)
GROUP BY 1
ORDER BY $__timeGroup(created_at,$__interval)
```
4. Ajoutez un panel qui affiche le volume de ventes par jour avec des indicateurs de performances
```
SELECT
  $__timeGroupAlias(created_at,$__interval),
  count(id) AS "amount"
FROM sylius_payment
WHERE
  $__timeFilter(created_at)
GROUP BY 1
ORDER BY $__timeGroup(created_at,$__interval)
```