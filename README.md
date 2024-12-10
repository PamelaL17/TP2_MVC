# TP2 Architecture MVC

## Migrer mon projet vers l'architecture MVC

### Les objectifs du TP2
- Créez les routes du projet avec des constructeurs et des méthodes d'appel.
- Assurez-vous d'avoir des contrôleurs par fonctionnalité.
- Créez des modèles pour toutes vos tables.
- Développez au moins 4 vues : une vue statique comme page d'accueil et d'autres vues dynamiques pour activer les fonctions CRUD.
- Utilisez TWIG pour rendre vos vues.
- Vous pouvez utiliser une seule table pour appliquer les fonctions CRUD, mais le choix de la table doit refléter la complexité du projet.
- Valider les données.
- Assurez-vous que votre projet est fonctionnel, avec la navigation, la gestion des erreurs et la conception CSS intégrée.

#### Description du projet 
Le projet utilise une base de données tp2_mvc avec plusieurs tables principales :

artists : Contient des informations sur les artistes (ID, nom, biographie).

artworks : Contient les œuvres d'art (ID, titre, description, ID de l'artiste, ID de la catégorie, et une image associée).

exhibitions : Enregistre les expositions des œuvres (ID, nom de l'exposition, date, ID de l'artiste).

categories : Liste les catégories d'art (ex. Impressionnisme, Renaissance, Cubisme, etc.).
La table artworks est liée aux autres tables par des clés étrangères (artists_id, category_id).


- Auteur : Pamela Limoges
- GitHub : https://github.com/PamelaL17/TP2_MVC
- Adresse URL du site sur WebDev : https://e2495515.webdev.cmaisonneuve.qc.ca/TP2_MVC/artists
