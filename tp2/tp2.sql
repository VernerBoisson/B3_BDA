--1. Créez une base de données nommée events

CREATE DATABASE events;

--2. Ajoutez une table public_events contenant les colonnes event_date, event_name, event_age_requirement avec les types appropriés

CREATE TABLE public_events(event_date DATE, event_name VARCHAR(30), event_age_requirement INT(3));

--3. Dupliquez cette table dans une nouvelle table private_events

CREATE TABLE private_event AS 
    SELECT * 
    FROM public_events;

--4. Créez un utilisateur event_manager avec le mot de passe password

CREATE USER 'utilisateur'@'%' IDENTIFIED by 'password';

--5. Donnez toutes les permissions à la base de données events à cet utilisateur

GRANT ALL PRIVILEGES ON events TO 'utilisateur'@'%';
FLUSH PRIVILEGES;

--6. Créez un utilisateur event_supervisor et donnez lui les droits pour visualiser le contenu de la table public_events

CREATE USER 'event_supervisor'@'%' IDENTIFIED BY 'password';
GRANT SELECT ON events.public_events TO 'event_supervisor'@'%';
FLUSH PRIVILEGES;

--7. Connectez vous en tant que event_manager et ajoutez plusieurs entrées dans les tables public_event et private_event
--8. Connectez vous en tant que event_supervisor et listez le contenu de la table public_events
--9. En tant que event_supervisor essayez de lister le contenu de la table private_events (pour cette étape donnez moi la commande ainsi que le message d'erreur que vous recevez en retour)
--10. Reconnectez vous en tant qu'utilisateur root et supprimez l'utilisateur event_supervisor
