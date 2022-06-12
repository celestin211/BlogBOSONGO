#BlogBOSONGO
#BlogBOSONGO
https://openclassrooms.com/fr/paths/59/projects/7/assignment
Contexte
Ça y est, vous avez sauté le pas ! Le monde du développement web avec PHP est à portée de main et vous avez besoin de visibilité pour pouvoir convaincre vos futurs employeurs/clients en un seul regard. Vous êtes développeur PHP, il est donc temps de montrer vos talents au travers d’un blog à vos couleurs.

Description du besoin
Le projet est donc de développer votre blog professionnel. Ce site web se décompose en deux grands groupes de pages :

les pages utiles à tous les visiteurs ;
les pages permettant d’administrer votre blog.
Voici la liste des pages qui devront être accessibles depuis votre site web :

la page d'accueil ;
la page listant l’ensemble des blog posts ;
la page affichant un blog post ;
la page permettant d’ajouter un blog post ;
la page permettant de modifier un blog post ;
les pages permettant de modifier/supprimer un blog post ;
les pages de connexion/enregistrement des utilisateurs.
## Informations supplémentaires
Cours [cours de Baptiste Pesquet](https://bpesquet.developpez.com/tutoriels/php/evoluer-architecture-mvc/)

## Installation
__Etape 1__ : Transférer les fichiers dans le dossier web de votre serveur web (en général "www/").  
__Etape 2__ : Créer une base données sur votre SGDB (MySQL) et importer le fichier DB/projet5.sql afin d'y créer les différentes tables  
__Etape 3__ : Remplir le fichier Config/prod.ini ou Config/dev.ini selon votre environnement.  
Attention ! Supprimez dev.ini si vous souhaitez utiliser le fichier prod.ini !  
Veillez à bien remplir tout les champs avec vos informations de la même façon que celle fournit pour exemple !

* rootWeb = /NomDuDossierRacine/  
  * _Laisser un "/" si les fichiers se trouvent à la base de votre dossier web_  
* dsn = 'mysql:host=_AdresseBaseDeDonnées_;dbname=_NomBaseDeDonnées_;charset=_utf8_'  
* login = _utilisateurDeBaseDeDonnées_  
* password = _motDePasseDeBaseDeDonnées_  
* email = _'votreEmailDeReception@gmail.com'_  
* noreply = _'noreply@votredomaine.com'_  
* domain = _'http://votredomaine.com/NomDuDossierRacine/'_  

__Etape 4__ : Votre blog est désormais fonctionnel ! Vous pouvez y créer un compte dans l'onglet "Inscription" sans oublier de cliquer sur le lien de validation de votre email. Ensuite, dans votre base de données et dans la table "user", modifier la colonne "usertype" de l'utilisateur que vous venez de créer et mettez y la valeur 2. Enregistrer, vous disposez désormais d'un compte administrateur qui vous permet de gérer votre blog via le menu "Administration"

Attention ! La protection de répertoires doit être réalisée sous Apache soit via httpd.conf ou soit via des fichiers [.htaccess et .htpasswd](https://openclassrooms.com/fr/courses/918836-concevez-votre-site-web-avec-php-et-mysql/918580-proteger-un-dossier-avec-un-htaccess)  
Veuillez à bien protéger le dossier Config/ ainsi que tout les autres dossiers contenant du code qui ne doit pas être accessible par l'utilisateur !
                                                        https://celestinservices.fr/BlogBOSONGO/
