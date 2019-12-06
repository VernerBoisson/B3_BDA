# Monitoring avec Prometheus

## Première partie

Créez un fichier docker-compose qui réunit
- Un serveur mariaDB
- Un serveur prometheus
- Un serveur mysql-exporter

Et relier les entre eux.

## Deuxième partie

1. Créez un graphique qui affiche toutes les opérations de lectures et d'écritures.
   ```
   mysql_global_status_commands_total{command='select'} or sum(mysql_global_status_commands_total{command='update'} or mysql_global_status_commands_total{command='insert'})
   ```
   ![screen_shot2](./images/Screenshot_2019-12-03&#32;Prometheus&#32;Time&#32;Series&#32;Collection&#32;and&#32;Processing&#32;Server(1).png)
2. Créez un graphique qui affiche la variation du taux d'opérations de lectures et d'écritures en prenant en compte la moyenne sur les 5 dernières minutes
    ```
    sum(delta(mysql_global_status_commands_total{command='update'}[5m]) or delta(mysql_global_status_commands_total{command='insert'}[5m]))
    ```
    ![screen_shot2](./images/Screenshot_2019-12-03&#32;Prometheus&#32;Time&#32;Series&#32;Collection&#32;and&#32;Processing&#32;Server(2).png)
