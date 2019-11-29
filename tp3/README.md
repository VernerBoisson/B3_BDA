# Requête de base SQL - Partie 3

1. Ecrivez un script pour :
    1. Créer une base de données nommée teams
    2. Cette base contient une table games avec les colonnes match_date, victory, observations avec les types adaptées
    3. Cette base contient une table players avec les colonnes firstname, lastname, start_date avec les types adaptées
    4. Donner tous les droits sur la table games à un nouvel utilisateur manager avec le mot de passe manager_password
    5. Donner les droits d'écriture et de lecture sur la table players à un nouvel utilisateur recruiter avec le mot de passe recruiter_password
    6. Valider ces privilèges
2. Exécutez ce script pour l'utilisateur adéquat
   
`mysql -u root -p < script.sql`

3. Ecrivez un script pour ajouter au moins trois lignes dans la table games et exécutez le pour l'utilisateur adéquat

`mysql -u manager -p < script2.sql`