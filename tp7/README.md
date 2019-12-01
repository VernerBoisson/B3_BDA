# Mise en place d'un cluster Galera

1. Instanciez 3 serveurs maria
2. Assurez vous que les serveurs puissent communiquer entre eux en ajoutant la configuration nécéssaire dans les docker-compose
3. Ajoutez la configuration nécéssaire pour chaque node
4. Importez un dump quelconque sur un des nodes et vérifiez que celui ci est bien présent sur les autres nodes
5. Eteignez toutes les nodes et trouvez celui depuis lequel vous pouvez bootstrapper le cluster au redémarrage
6. Redémarrez les nodes et vérifiez le bon fonctionnement du cluster

