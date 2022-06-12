-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 27 jan. 2022 à 14:27
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet5`
--

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) NOT NULL,
  `date_creation` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `comment_ibfk_1` (`post_id`),
  KEY `comment_ibfk_2` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `chapo` varchar(200) NOT NULL,
  `date_creation` datetime NOT NULL,
  `date_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `title`, `chapo`, `date_creation`, `date_update`, `content`) VALUES
(1, 'Les nouveautés de PHP 8 prévues pour fin 2020', 'PHP 8', '2022-01-19 22:12:36', '2022-01-19 23:12:58', 'Les nouveautés de PHP 8 prévues pour fin 2020\r\nPhp 8, la prochaine version majeure de PHP, devrait être livrée d\'ici la fin de l\'année 2020.\r\n\r\nDe gros développements sont actuellement en cours, il est donc à supposer que de belles nouveautés verront le jour.\r\n\r\nDans cet article, découvrez une liste des changements attendus sur la prochaine version : les nouvelles fonctionnalités, les améliorations concernant les performances, les changements radicaux.\r\n\r\nVous pourrez également en savoir plus sur les impacts que ces modifications risquent d\'entraîner sur votre code. \r\n\r\nPlus d\'infos dans cette veille technique proposée par stitcher.io. '),
(2, 'Dynamisez vos vues à l’aide de Twig', 'Qu’est-ce que Twig ?', '2022-01-25 20:43:16', '2022-01-25 21:43:39', 'Twig est un moteur de gabarit développé en PHP inclus par défaut avec le framework Symfony 4.\n\nMais PHP est déjà un moteur de gabarit : pourquoi devrions-nous utiliser et apprendre un moteur de gabarit supplémentaire ?\n\nLe langage PHP qui était un moteur de gabarit à ses débuts est maintenant devenu un langage complet capable de supporter la programmation objet, fonctionnelle et impérative.\n\nL\'intérêt principal d\'un moteur de gabarit est de séparer la logique de sa représentation. En utilisant PHP, comment définir ce qui est de la logique et ce qui est de la représentation ?\n\nPourtant, nous avons toujours besoin d\'un peu de code dynamique pour intégrer des pages web :\n\npouvoir boucler sur une liste d\'éléments ;\n\npouvoir afficher une portion de code selon une condition ;\n\nou formater une date en fonction de la date locale utilisée par le visiteur du site...\n\nVoici pourquoi Twig est plus adapté que le PHP en tant que moteur de gabarit :\n\nil a une syntaxe beaucoup plus concise et claire;\n\npar défaut, il supporte de nombreuses fonctionnalités utiles, telles que la notion d\'héritage ;\n\net il sécurise automatiquement vos variables.'),
(3, 'Développez votre site web avec le framework Symfony', 'Symfony', '2022-01-25 20:46:57', '2022-01-25 21:47:08', 'Vous développez des sites web régulièrement et vous en avez assez de réinventer la roue ? Vous aimeriez utiliser les bonnes pratiques de développement PHP pour concevoir des sites web de qualité professionnelle ?\n\nCe cours vous permettra de prendre en main Symfony, le framework PHP de référence. Pourquoi utiliser un framework ? Comment créer un nouveau projet de site web avec Symfony, mettre en place les environnements de test et de production, concevoir les contrôleurs, les templates, gérer la traduction et communiquer avec une base de données via Doctrine ?\n\nAlexandre Bacco vous montrera tout au long de ce cours comment ce puissant framework, supporté par une large communauté, va vous faire gagner en efficacité. Fabien Potencier, créateur de Symfony, introduira chacun des chapitres par une vidéo explicative des principaux points abordés.\n\nCe cours, écrit par Alexandre Bacco, a été conçu conjointement par SensioLabs, société éditrice de Symfony, et OpenClassrooms. Un certificat de réussite du cours sera délivré par SensioLabs et OpenClassrooms pour les élèves qui réussiront l’ensemble des exercices.'),
(4, 'Veille technologique', 'Se former après la formation', '2022-01-25 20:50:51', '2022-01-25 21:51:59', 'La veille technologique apporte des informations stratégiques. ... Cela permet de constituer une base d\'informations clés pour identifier et comprendre les concurrents et les technologies. C\'est un moyen de collecter des informations stratégiques sur les concurrents et leurs innovations.'),
(5, 'React native', 'React native et Symfony', '2022-01-25 20:50:51', '2022-01-25 21:52:33', 'React Native est un framework d\'applications mobiles open source créé par Facebook. Il est utilisé pour développer des applications pour Android, iOS et UWP en permettant aux développeurs d’utiliser React avec les fonctionnalités natives de ces plateformes.'),
(6, 'git', 'Git à savoir absolument', '2022-01-26 10:51:13', '2022-01-26 11:54:24', 'Git très demandé par les entreprises donc il est nécessaire de bien mettre toutes les pratiques Git en exergue pour être efficace lors d\'un entretien ou faire un travail collaboratif exemplaire .\r\ntitle: Principales commandes\r\ncategory: Git\r\n---\r\n\r\n## Status des fichiers\r\n\r\n```shell\r\ngit status\r\n```\r\n\r\n## Lister les branchs\r\n\r\n```shell\r\ngit branch -a\r\n```\r\n\r\n`*`sur la branche courante.\r\n\r\n## Créer une branch\r\n\r\n```shell\r\n# Deux lignes: créer et basculer sur la nouvelle branch\r\ngit branch nom_de_ma_branch_nouvelle\r\ngit checkout nom_de_ma_branch_nouvelle\r\n\r\n# Une seule ligne: créer et basculer\r\ngit checkout -b nom_de_ma_branch_nouvelle\r\n```\r\n\r\n## Supprimer une branch\r\n\r\n```shell\r\n# Si la branch est local et n\'est pas créée sur le repo distant\r\ngit branch -d nom_de_ma_branch_local\r\n\r\n# Si la branch est présente sur le repo distant\r\ngit push origin --delete nom_de_ma_branch_distante\r\n```\r\n\r\n## Changer de branch\r\n\r\n```shell\r\ngit checkout nom_de_ma_branch\r\n\r\n# GIT --version 2.23\r\ngit switch nom_de_ma_branch\r\n```\r\n\r\n## Premier commit\r\n\r\n```shell\r\ngit add .\r\ngit commit -m \"initial commit\"\r\n```\r\n\r\n## Commit suivant\r\n\r\n```shell\r\ngit add chemin_vers_mon_fichier\r\ngit commit -m \"message du commit\"\r\n```\r\n\r\n## Annuler le dernier commit et modifs\r\n\r\n```shell\r\ngit reset --hard md5_commit\r\ngit push --force\r\n```\r\n\r\n## Antidaté un commit.\r\n\r\n```shell\r\ngit add .\r\nGIT_AUTHOR_DATE=\"2015-12-12 08:32 +100\" git commit -m \"Commit antidaté\"\r\n```\r\n\r\n## Mettre à jour le dépôt local\r\n\r\n```shell\r\ngit pull\r\n```\r\n\r\n## Mettre à jour le dépôt local d\'une branch spécifique\r\n\r\n```shell\r\ngit pull origin MA_BRANCH\r\n```\r\n\r\n## Envoyer ses commits vers le dépôt distant\r\n\r\n```shell\r\ngit push\r\n```\r\n\r\n## Envoyer ses commits vers le dépôt distant sur une branch spécifique\r\n\r\n```shell\r\ngit push origin MA_BRANCH\r\n```\r\n\r\n## Supprimer un fichier du répertoire de travail et de l\'index\r\n\r\n```shell\r\ngit rm nom_du_fichier\r\n```\r\n\r\n## Supprimer un fichier de l\'index\r\n\r\n```shell\r\ngit rmg --cached nom_du_fichier\r\n```\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` binary(60) NOT NULL,
  `activated` tinyint(1) NOT NULL,
  `validation_key` binary(32) NOT NULL,
  `user_type` tinyint(1) NOT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `activated`, `validation_key`, `user_type`, `date_creation`) VALUES
(1, 'papou', 'papou@gmail.com', 0x24327924313024433330734d594f724f484e75556d782e536d56697175756576316159446e6e45745572584e464a4e4f5550502e384a4f696d756d47, 0, 0x6538643734373530656638643731613630656437306535383438666637316263, 1, '2022-01-26 09:57:01');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
