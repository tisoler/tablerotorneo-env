# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 45.55.169.185 (MySQL 5.7.39-0ubuntu0.18.04.2)
# Database: tablerotorneo
# Generation Time: 2022-10-10 23:04:06 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categoria
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;

INSERT INTO `categoria` (`id`, `descripcion`)
VALUES
	(1,'primera');

/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table club
# ------------------------------------------------------------

DROP TABLE IF EXISTS `club`;

CREATE TABLE `club` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL DEFAULT '',
  `idLocalidad` int(5) unsigned NOT NULL,
  `imagenEscudo` varchar(100) DEFAULT NULL,
  `colorPrincipal` varchar(50) DEFAULT NULL,
  `colorSecundario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_localidad` (`idLocalidad`),
  CONSTRAINT `FK_localidad` FOREIGN KEY (`idLocalidad`) REFERENCES `localidad` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;

INSERT INTO `club` (`id`, `nombre`, `idLocalidad`, `imagenEscudo`, `colorPrincipal`, `colorSecundario`)
VALUES
	(1,'Club Social',1,'escudoSocial.png','#F01A07','#263C99'),
	(2,'Bochin Club Paz',1,NULL,'#263C99','#F01A07'),
	(3,'Atlético Paz',1,'escudoAtletico.png','#E20100','#000000');

/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table configuracion
# ------------------------------------------------------------

DROP TABLE IF EXISTS `configuracion`;

CREATE TABLE `configuracion` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pantallaMostrar` varchar(100) NOT NULL DEFAULT 'grupos',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `configuracion` WRITE;
/*!40000 ALTER TABLE `configuracion` DISABLE KEYS */;

INSERT INTO `configuracion` (`id`, `pantallaMostrar`)
VALUES
	(1,'grupo'),
	(2,'torneo'),
	(3,'torneo'),
	(4,'torneo');

/*!40000 ALTER TABLE `configuracion` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cuadroFinal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cuadroFinal`;

CREATE TABLE `cuadroFinal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cuartosAEquipo1` int(3) unsigned DEFAULT NULL,
  `cuartosAEquipo2` int(3) unsigned DEFAULT NULL,
  `cuartosBEquipo1` int(3) unsigned DEFAULT NULL,
  `cuartosBEquipo2` int(3) unsigned DEFAULT NULL,
  `cuartosCEquipo1` int(3) unsigned DEFAULT NULL,
  `cuartosCEquipo2` int(3) unsigned DEFAULT NULL,
  `cuartosDEquipo1` int(3) unsigned DEFAULT NULL,
  `cuartosDEquipo2` int(3) unsigned DEFAULT NULL,
  `semifinalAEquipo1` int(3) unsigned DEFAULT NULL,
  `semifinalAEquipo2` int(3) unsigned DEFAULT NULL,
  `semifinalBEquipo1` int(3) unsigned DEFAULT NULL,
  `semifinalBEquipo2` int(3) unsigned DEFAULT NULL,
  `finalEquipo1` int(3) unsigned DEFAULT NULL,
  `finalEquipo2` int(3) unsigned DEFAULT NULL,
  `campeon` int(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CuartoAEquipo1` (`cuartosAEquipo1`),
  KEY `FK_CuartoAEquipo2` (`cuartosAEquipo2`),
  KEY `FK_CuartoBEquipo1` (`cuartosBEquipo1`),
  KEY `FK_CuartoBEquipo2` (`cuartosBEquipo2`),
  KEY `FK_CuartoCEquipo1` (`cuartosCEquipo1`),
  KEY `FK_CuartoCEquipo2` (`cuartosCEquipo2`),
  KEY `FK_CuartoDEquipo1` (`cuartosDEquipo1`),
  KEY `FK_CuartoDEquipo2` (`cuartosDEquipo2`),
  KEY `FK_SemifinalAEquipo1` (`semifinalAEquipo1`),
  KEY `FK_SemifinalAEquipo2` (`semifinalAEquipo2`),
  KEY `FK_SemifinalBEquipo1` (`semifinalBEquipo1`),
  KEY `FK_SemifinalBEquipo2` (`semifinalBEquipo2`),
  KEY `FK_FinalAEquipo1` (`finalEquipo1`),
  KEY `FK_FinalAEquipo2` (`finalEquipo2`),
  KEY `FK_campeon` (`campeon`),
  CONSTRAINT `FK_CuartoAEquipo1` FOREIGN KEY (`cuartosAEquipo1`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_CuartoAEquipo2` FOREIGN KEY (`cuartosAEquipo2`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_CuartoBEquipo1` FOREIGN KEY (`cuartosBEquipo1`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_CuartoBEquipo2` FOREIGN KEY (`cuartosBEquipo2`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_CuartoCEquipo1` FOREIGN KEY (`cuartosCEquipo1`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_CuartoCEquipo2` FOREIGN KEY (`cuartosCEquipo2`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_CuartoDEquipo1` FOREIGN KEY (`cuartosDEquipo1`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_CuartoDEquipo2` FOREIGN KEY (`cuartosDEquipo2`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_FinalAEquipo1` FOREIGN KEY (`finalEquipo1`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_FinalAEquipo2` FOREIGN KEY (`finalEquipo2`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_SemifinalAEquipo1` FOREIGN KEY (`semifinalAEquipo1`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_SemifinalAEquipo2` FOREIGN KEY (`semifinalAEquipo2`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_SemifinalBEquipo1` FOREIGN KEY (`semifinalBEquipo1`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_SemifinalBEquipo2` FOREIGN KEY (`semifinalBEquipo2`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_campeon` FOREIGN KEY (`campeon`) REFERENCES `equipo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `cuadroFinal` WRITE;
/*!40000 ALTER TABLE `cuadroFinal` DISABLE KEYS */;

INSERT INTO `cuadroFinal` (`id`, `cuartosAEquipo1`, `cuartosAEquipo2`, `cuartosBEquipo1`, `cuartosBEquipo2`, `cuartosCEquipo1`, `cuartosCEquipo2`, `cuartosDEquipo1`, `cuartosDEquipo2`, `semifinalAEquipo1`, `semifinalAEquipo2`, `semifinalBEquipo1`, `semifinalBEquipo2`, `finalEquipo1`, `finalEquipo2`, `campeon`)
VALUES
	(9,1,16,9,12,13,2,6,5,1,12,13,5,12,5,5);

/*!40000 ALTER TABLE `cuadroFinal` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table disciplina
# ------------------------------------------------------------

DROP TABLE IF EXISTS `disciplina`;

CREATE TABLE `disciplina` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;

INSERT INTO `disciplina` (`id`, `nombre`)
VALUES
	(1,'Pádel'),
	(2,'Tenis'),
	(3,'Voley'),
	(4,'Fútbol'),
	(5,'Hockey');

/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table disciplinaClub
# ------------------------------------------------------------

DROP TABLE IF EXISTS `disciplinaClub`;

CREATE TABLE `disciplinaClub` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idClub` int(11) unsigned NOT NULL,
  `idDisciplina` int(5) unsigned NOT NULL,
  `idCategoria` int(5) unsigned NOT NULL,
  `idConfiguracion` int(5) unsigned NOT NULL,
  `idUsuario` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_club` (`idClub`),
  KEY `FK_categoria` (`idCategoria`),
  KEY `FK_disciplinaclub_disciplina` (`idDisciplina`),
  KEY `FK_configuracion` (`idConfiguracion`),
  KEY `FK_usuario` (`idUsuario`),
  CONSTRAINT `FK_categoria` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`),
  CONSTRAINT `FK_club` FOREIGN KEY (`idClub`) REFERENCES `club` (`id`),
  CONSTRAINT `FK_configuracion` FOREIGN KEY (`idConfiguracion`) REFERENCES `configuracion` (`id`),
  CONSTRAINT `FK_disciplinaclub_disciplina` FOREIGN KEY (`idDisciplina`) REFERENCES `disciplina` (`id`),
  CONSTRAINT `FK_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `disciplinaClub` WRITE;
/*!40000 ALTER TABLE `disciplinaClub` DISABLE KEYS */;

INSERT INTO `disciplinaClub` (`id`, `idClub`, `idDisciplina`, `idCategoria`, `idConfiguracion`, `idUsuario`)
VALUES
	(1,1,1,1,1,1),
	(2,2,2,1,4,4),
	(3,3,4,1,2,2),
	(4,3,5,1,3,3);

/*!40000 ALTER TABLE `disciplinaClub` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table equipo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `equipo`;

CREATE TABLE `equipo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombreJugador1` varchar(255) NOT NULL DEFAULT '',
  `nombreJugador2` varchar(255) NOT NULL DEFAULT '',
  `posicion` int(10) unsigned DEFAULT NULL,
  `idGrupo` varchar(3) DEFAULT NULL,
  `partidosJugados` int(3) unsigned DEFAULT '0',
  `partidosGanados` int(3) unsigned DEFAULT '0',
  `diferenciaGames` int(3) DEFAULT '0',
  `diferenciaSets` int(3) DEFAULT '0',
  `idTorneoDisciplinaClub` int(11) unsigned NOT NULL,
  `puntos` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_torneo` (`idTorneoDisciplinaClub`),
  CONSTRAINT `FK_torneo` FOREIGN KEY (`idTorneoDisciplinaClub`) REFERENCES `torneoDisciplinaClub` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;

INSERT INTO `equipo` (`id`, `nombreJugador1`, `nombreJugador2`, `posicion`, `idGrupo`, `partidosJugados`, `partidosGanados`, `diferenciaGames`, `diferenciaSets`, `idTorneoDisciplinaClub`, `puntos`)
VALUES
	(1,'Juan Pablo Toscanini','Franco Lingiardi',1,'A',3,3,24,6,1,0),
	(2,'Gabriel Freggiaro','Gustavo Tommasi',2,'A',3,2,8,2,1,0),
	(3,'Gabriel Grieco','Emmanuel López',4,'A',3,0,-26,-6,1,0),
	(4,'Fabio Tommasi','Elías Segovia',3,'A',3,1,-6,-2,1,0),
	(5,'Lucas Osoria','Giani Marcolini',2,'B',3,2,17,3,1,0),
	(6,'Mariano Flor Ribot','Mauro Alesso',1,'B',3,3,17,5,1,0),
	(7,'Cristian Céliz','Maxi Escobedo',4,'B',3,1,-25,-6,1,0),
	(8,'Lucio Giovannángelo','Nicolás Alés',3,'B',3,1,-9,-2,1,0),
	(9,'Angel Gallo','Silvio Guerra',1,'C',3,3,15,5,1,0),
	(10,'Jepo Guirado','Nicolás Alesso',3,'C',3,1,-17,-3,1,0),
	(11,'Germán Mijoevich','Gino Renzi',4,'C',3,NULL,-20,-5,1,0),
	(12,'Javier Tulián','Diego Poggio',2,'C',3,2,22,3,1,0),
	(13,'Pablo Torres','Sergio Giovannángelo',1,'D',3,3,17,5,1,0),
	(14,'Guillermo Posebón','Gabriel Rivarola',4,'D',3,NULL,-23,-4,1,0),
	(15,'Germán Roselló','Valentino Alés',3,'D',3,1,5,-2,1,0),
	(16,'Fernando Lingiardi','Javier Barale',2,'D',3,2,1,1,1,0),
	(21,'Atlético Paz','',2,NULL,0,0,0,0,2,13),
	(22,'Italo Argentino','',1,NULL,0,0,0,0,2,15),
	(23,'FirmatFBC','',3,NULL,0,0,0,0,2,10),
	(25,'Atlético Paz','',2,NULL,0,0,0,0,3,15),
	(26,'Eduardo Hertz','',1,NULL,0,0,0,0,3,17),
	(27,'Blanco y Negro','',3,NULL,0,0,0,0,3,10);

/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table localidad
# ------------------------------------------------------------

DROP TABLE IF EXISTS `localidad`;

CREATE TABLE `localidad` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `localidad` WRITE;
/*!40000 ALTER TABLE `localidad` DISABLE KEYS */;

INSERT INTO `localidad` (`id`, `nombre`)
VALUES
	(1,'Máximo Paz');

/*!40000 ALTER TABLE `localidad` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table partido
# ------------------------------------------------------------

DROP TABLE IF EXISTS `partido`;

CREATE TABLE `partido` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idEquipo1` int(10) unsigned NOT NULL,
  `idEquipo2` int(10) unsigned NOT NULL,
  `equipo1Set1` tinyint(3) unsigned DEFAULT NULL,
  `equipo1Set2` tinyint(3) unsigned DEFAULT NULL,
  `equipo1Set3` tinyint(3) unsigned DEFAULT NULL,
  `equipo2Set1` tinyint(3) unsigned DEFAULT NULL,
  `equipo2Set2` tinyint(3) unsigned DEFAULT NULL,
  `equipo2Set3` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_equipo1` (`idEquipo1`),
  KEY `FK_equipo2` (`idEquipo2`),
  CONSTRAINT `FK_equipo1` FOREIGN KEY (`idEquipo1`) REFERENCES `equipo` (`id`),
  CONSTRAINT `FK_equipo2` FOREIGN KEY (`idEquipo2`) REFERENCES `equipo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `partido` WRITE;
/*!40000 ALTER TABLE `partido` DISABLE KEYS */;

INSERT INTO `partido` (`id`, `idEquipo1`, `idEquipo2`, `equipo1Set1`, `equipo1Set2`, `equipo1Set3`, `equipo2Set1`, `equipo2Set2`, `equipo2Set3`)
VALUES
	(1,1,2,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `partido` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table partidoActual
# ------------------------------------------------------------

DROP TABLE IF EXISTS `partidoActual`;

CREATE TABLE `partidoActual` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idEquipo1` int(10) unsigned NOT NULL,
  `idEquipo2` int(10) unsigned NOT NULL,
  `equipo1Game` int(10) unsigned NOT NULL DEFAULT '0',
  `equipo2Game` int(10) unsigned NOT NULL DEFAULT '0',
  `equipo1Set1` tinyint(3) unsigned DEFAULT NULL,
  `equipo1Set2` tinyint(3) unsigned DEFAULT NULL,
  `equipo1Set3` tinyint(3) unsigned DEFAULT NULL,
  `equipo2Set1` tinyint(3) unsigned DEFAULT NULL,
  `equipo2Set2` tinyint(3) unsigned DEFAULT NULL,
  `equipo2Set3` tinyint(3) unsigned DEFAULT NULL,
  `setActual` tinyint(3) unsigned DEFAULT NULL,
  `tipoSet` varchar(50) DEFAULT NULL,
  `sacaEquipo1` tinyint(1) DEFAULT '1',
  `tipoGame` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `partidoActual` WRITE;
/*!40000 ALTER TABLE `partidoActual` DISABLE KEYS */;

INSERT INTO `partidoActual` (`id`, `idEquipo1`, `idEquipo2`, `equipo1Game`, `equipo2Game`, `equipo1Set1`, `equipo1Set2`, `equipo1Set3`, `equipo2Set1`, `equipo2Set2`, `equipo2Set3`, `setActual`, `tipoSet`, `sacaEquipo1`, `tipoGame`)
VALUES
	(2,13,2,0,0,0,0,0,0,0,0,1,'set',1,'game');

/*!40000 ALTER TABLE `partidoActual` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table partidoFutbol
# ------------------------------------------------------------

DROP TABLE IF EXISTS `partidoFutbol`;

CREATE TABLE `partidoFutbol` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idEquipoLocal` int(10) unsigned NOT NULL,
  `idEquipoVisitante` int(10) unsigned NOT NULL,
  `golesEquipoLocal` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `golesEquipoVisitante` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `numeroTiempo` int(3) unsigned NOT NULL DEFAULT '1',
  `idTorneoDisciplinaClub` int(11) unsigned NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_equipo1` (`idEquipoLocal`),
  KEY `FK_equipo2` (`idEquipoVisitante`),
  CONSTRAINT `partidoFutbol_ibfk_1` FOREIGN KEY (`idEquipoLocal`) REFERENCES `equipo` (`id`),
  CONSTRAINT `partidoFutbol_ibfk_2` FOREIGN KEY (`idEquipoVisitante`) REFERENCES `equipo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `partidoFutbol` WRITE;
/*!40000 ALTER TABLE `partidoFutbol` DISABLE KEYS */;

INSERT INTO `partidoFutbol` (`id`, `idEquipoLocal`, `idEquipoVisitante`, `golesEquipoLocal`, `golesEquipoVisitante`, `fecha`, `numeroTiempo`, `idTorneoDisciplinaClub`, `activo`)
VALUES
	(8,1,23,0,0,'2022-10-10 17:57:21',2,2,1);

/*!40000 ALTER TABLE `partidoFutbol` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table partidoHockey
# ------------------------------------------------------------

DROP TABLE IF EXISTS `partidoHockey`;

CREATE TABLE `partidoHockey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idEquipoLocal` int(10) unsigned NOT NULL,
  `idEquipoVisitante` int(10) unsigned NOT NULL,
  `golesEquipoLocal` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `golesEquipoVisitante` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `numeroTiempo` int(3) unsigned NOT NULL DEFAULT '1',
  `idTorneoDisciplinaClub` int(11) unsigned NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_equipo1` (`idEquipoLocal`),
  KEY `FK_equipo2` (`idEquipoVisitante`),
  CONSTRAINT `partidoHockey_ibfk_1` FOREIGN KEY (`idEquipoLocal`) REFERENCES `equipo` (`id`),
  CONSTRAINT `partidoHockey_ibfk_2` FOREIGN KEY (`idEquipoVisitante`) REFERENCES `equipo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table partidoPadel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `partidoPadel`;

CREATE TABLE `partidoPadel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idEquipo1` int(10) unsigned NOT NULL,
  `idEquipo2` int(10) unsigned NOT NULL,
  `equipo1Set1` tinyint(3) unsigned DEFAULT NULL,
  `equipo1Set2` tinyint(3) unsigned DEFAULT NULL,
  `equipo1Set3` tinyint(3) unsigned DEFAULT NULL,
  `equipo2Set1` tinyint(3) unsigned DEFAULT NULL,
  `equipo2Set2` tinyint(3) unsigned DEFAULT NULL,
  `equipo2Set3` tinyint(3) unsigned DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `equipo1Game` int(10) unsigned DEFAULT NULL,
  `equipo2Game` int(10) unsigned DEFAULT NULL,
  `setActual` tinyint(3) unsigned DEFAULT NULL,
  `tipoSet` varchar(50) DEFAULT NULL,
  `sacaEquipo1` tinyint(1) DEFAULT '1',
  `tipoGame` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_equipo1` (`idEquipo1`),
  KEY `FK_equipo2` (`idEquipo2`),
  CONSTRAINT `partidoPadel_ibfk_1` FOREIGN KEY (`idEquipo1`) REFERENCES `equipo` (`id`),
  CONSTRAINT `partidoPadel_ibfk_2` FOREIGN KEY (`idEquipo2`) REFERENCES `equipo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table partidoTenis
# ------------------------------------------------------------

DROP TABLE IF EXISTS `partidoTenis`;

CREATE TABLE `partidoTenis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idEquipo1` int(10) unsigned NOT NULL,
  `idEquipo2` int(10) unsigned NOT NULL,
  `equipo1Set1` tinyint(3) unsigned DEFAULT NULL,
  `equipo1Set2` tinyint(3) unsigned DEFAULT NULL,
  `equipo1Set3` tinyint(3) unsigned DEFAULT NULL,
  `equipo2Set1` tinyint(3) unsigned DEFAULT NULL,
  `equipo2Set2` tinyint(3) unsigned DEFAULT NULL,
  `equipo2Set3` tinyint(3) unsigned DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `equipo1Game` int(10) unsigned DEFAULT NULL,
  `equipo2Game` int(10) unsigned DEFAULT NULL,
  `setActual` tinyint(3) unsigned DEFAULT NULL,
  `tipoSet` varchar(50) DEFAULT NULL,
  `sacaEquipo1` tinyint(1) DEFAULT '1',
  `tipoGame` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_equipo1` (`idEquipo1`),
  KEY `FK_equipo2` (`idEquipo2`),
  CONSTRAINT `partidoTenis_ibfk_1` FOREIGN KEY (`idEquipo1`) REFERENCES `equipo` (`id`),
  CONSTRAINT `partidoTenis_ibfk_2` FOREIGN KEY (`idEquipo2`) REFERENCES `equipo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tipoTorneo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tipoTorneo`;

CREATE TABLE `tipoTorneo` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `tipoDefinicionTercerSet` varchar(100) DEFAULT NULL,
  `idDisciplina` int(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_disciplina` (`idDisciplina`),
  CONSTRAINT `FK_disciplina` FOREIGN KEY (`idDisciplina`) REFERENCES `disciplina` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `tipoTorneo` WRITE;
/*!40000 ALTER TABLE `tipoTorneo` DISABLE KEYS */;

INSERT INTO `tipoTorneo` (`id`, `nombre`, `tipoDefinicionTercerSet`, `idDisciplina`)
VALUES
	(1,'Padel con super tie break','super-tie-break',1),
	(2,'Tenis a 3 sets','set',2),
	(3,'Voley a 5 sets',NULL,3),
	(4,'Fútbol 11',NULL,4),
	(5,'Hockey',NULL,5);

/*!40000 ALTER TABLE `tipoTorneo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table torneoDisciplinaClub
# ------------------------------------------------------------

DROP TABLE IF EXISTS `torneoDisciplinaClub`;

CREATE TABLE `torneoDisciplinaClub` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idDisciplinaClub` int(11) unsigned NOT NULL,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `idTipoTorneo` int(3) unsigned NOT NULL,
  `iniciales` varchar(15) DEFAULT NULL,
  `nombreMostrar` varchar(150) DEFAULT NULL,
  `sponsor` varchar(100) DEFAULT NULL,
  `imagenSponsor` varchar(100) DEFAULT NULL,
  `idsPartidosActuales` varchar(250) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `colorFondoSponsor` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tipo_torneo` (`idTipoTorneo`),
  KEY `FK_disciplina_club` (`idDisciplinaClub`),
  CONSTRAINT `FK_disciplina_club` FOREIGN KEY (`idDisciplinaClub`) REFERENCES `disciplinaClub` (`id`),
  CONSTRAINT `FK_tipo_torneo` FOREIGN KEY (`idTipoTorneo`) REFERENCES `tipoTorneo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `torneoDisciplinaClub` WRITE;
/*!40000 ALTER TABLE `torneoDisciplinaClub` DISABLE KEYS */;

INSERT INTO `torneoDisciplinaClub` (`id`, `idDisciplinaClub`, `nombre`, `idTipoTorneo`, `iniciales`, `nombreMostrar`, `sponsor`, `imagenSponsor`, `idsPartidosActuales`, `activo`, `colorFondoSponsor`)
VALUES
	(1,1,'APMP - Copa Que Placer Que Vino 9/2022',1,'APMD','Abierto de pádel de Máximo Paz','Que Placer Que Vino','logoQuePlacer.png',NULL,1,'#7F1833'),
	(2,3,'Liga deportiva del Sur - 2022',4,'LDS','Liga deportiva del Sur - 2022',NULL,NULL,NULL,1,NULL),
	(3,4,'Liga Hockey - 2022',5,'LH','Liga Hockey - 2022',NULL,NULL,NULL,1,NULL);

/*!40000 ALTER TABLE `torneoDisciplinaClub` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table usuario
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(150) NOT NULL DEFAULT '',
  `clave` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;

INSERT INTO `usuario` (`id`, `usuario`, `clave`)
VALUES
	(1,'quesito','$2b$10$3jcXE9yCfAHgCzk9//fXk.y7IM/oWI6AJXDfncmMF9Zzh8XrIJ8pO'),
	(2,'atleticofutbol','$2b$10$0ZLSqu8DQKrLZgR/dutHMuBmPYXgvsg5jEdZXWHxf51Hirp4hu25S'),
	(3,'atleticohockey','$2b$10$enGf2QuhEPNsUFJG/EOhTeOmwcSAeTEr/F1kFX2c4OXFhOiR45466'),
	(4,'bochintenis','$2b$10$AqIiiq9uOlWtFJuvjTJ1qeS2SBnMvwxPZ5/C1D1XkcR0ADPTvaHx.');

/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
