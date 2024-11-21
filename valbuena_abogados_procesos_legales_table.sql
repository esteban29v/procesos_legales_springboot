-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: 172.21.0.14    Database: valbuena_abogados
-- ------------------------------------------------------
-- Server version	5.7.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `procesos_legales`
--

DROP TABLE IF EXISTS `procesos_legales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procesos_legales` (
  `tipo` varchar(255) NOT NULL,
  `demandante` varchar(255) NOT NULL,
  `demandado` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `etapa` enum('INICIO','PRESENTACION','ADMISION','CONTESTACION','PROBATORIA','AUDIENCIA','SENTENCIA','APELACION','FIN') NOT NULL DEFAULT 'INICIO',
  `descripcion` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `abogado_asignado_id` int(11) DEFAULT NULL,
  `fecha_cierre` datetime(6) DEFAULT NULL,
  `numero_proceso` varchar(255) NOT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procesos_legales`
--

LOCK TABLES `procesos_legales` WRITE;
/*!40000 ALTER TABLE `procesos_legales` DISABLE KEYS */;
INSERT INTO `procesos_legales` VALUES ('Civil','Juan Pérez','María Gómez','Activo','ADMISION','Demanda por incumplimiento de contrato',1,1,NULL,'PROC001','2024-11-01 10:30:00.000000');
INSERT INTO `procesos_legales` VALUES ('Laboral','Carlos Díaz','Empresa XYZ','Activo','PROBATORIA','Reclamación de despido injustificado',2,2,NULL,'PROC002','2024-10-25 09:00:00.000000');
INSERT INTO `procesos_legales` VALUES ('Penal','Fiscalía General','Pedro López','Activo','AUDIENCIA','Acusación por fraude',3,3,NULL,'PROC003','2024-09-15 14:00:00.000000');
INSERT INTO `procesos_legales` VALUES ('Familia','Ana Torres','Luis Rodríguez','Activo','CONTESTACION','Custodia de menores',4,4,NULL,'PROC004','2024-08-10 08:45:00.000000');
INSERT INTO `procesos_legales` VALUES ('Civil','Comunidad Barrio Norte','Constructora ABC','Finalizado','FIN','Demanda por daños estructurales',5,1,'2024-07-01 10:00:00.000000','PROC005','2023-07-20 15:15:00.000000');
INSERT INTO `procesos_legales` VALUES ('Laboral','Rosa Martínez','Empresa XYZ','Finalizado','FIN','Pago de prestaciones laborales',6,2,'2024-01-15 16:30:00.000000','PROC006','2023-11-05 11:20:00.000000');
INSERT INTO `procesos_legales` VALUES ('Penal','Fiscalía General','Juan Ramírez','Activo','PRESENTACION','Caso de robo agravado',7,3,NULL,'PROC007','2024-02-20 13:00:00.000000');
INSERT INTO `procesos_legales` VALUES ('Familia','Marta Sánchez','Carlos Vega','Activo','PROBATORIA','Solicitud de divorcio',8,4,NULL,'PROC008','2024-05-12 10:10:00.000000');
INSERT INTO `procesos_legales` VALUES ('Civil','Banco ABC','Empresa XYZ','Activo','ADMISION','Reclamación de deuda',9,1,NULL,'PROC009','2024-06-15 17:20:00.000000');
INSERT INTO `procesos_legales` VALUES ('Laboral','José Hernández','Fábrica LMN','Activo','INICIO','Reclamo de horas extras no pagadas',10,2,NULL,'PROC010','2024-07-22 09:30:00.000000');
INSERT INTO `procesos_legales` VALUES ('Civil','Juan Perez','Maria Lopez','Activo','INICIO','Reclamación por incumplimiento de contrato',11,1,NULL,'PROCESO001','2024-11-01 10:00:00.000000');
INSERT INTO `procesos_legales` VALUES ('Penal','Carlos Garcia','Pedro Soto','Activo','PRESENTACION','Denuncia por fraude',12,2,NULL,'PROCESO002','2024-11-03 11:30:00.000000');
INSERT INTO `procesos_legales` VALUES ('Laboral','Ana Torres','Jose Mendoza','Activo','ADMISION','Despido injustificado',13,3,NULL,'PROCESO003','2024-11-04 09:00:00.000000');
INSERT INTO `procesos_legales` VALUES ('Familiar','Miguel Hernandez','Lucia Rios','Activo','CONTESTACION','Divorcio',14,4,NULL,'PROCESO004','2024-11-05 15:00:00.000000');
INSERT INTO `procesos_legales` VALUES ('Civil','Raul Paredes','Sofia Diaz','Inactivo','SENTENCIA','Accidente de tráfico',15,5,'2024-11-15 12:00:00.000000','PROCESO005','2024-11-06 10:00:00.000000');
INSERT INTO `procesos_legales` VALUES ('Penal','Elena Ruiz','Daniel Perez','Activo','AUDIENCIA','Agresión física',16,6,NULL,'PROCESO006','2024-11-07 13:30:00.000000');
INSERT INTO `procesos_legales` VALUES ('Laboral','Antonio Garcia','Laura Molina','Activo','PRESENTACION','Acuerdo de conciliación',17,7,NULL,'PROCESO007','2024-11-08 14:00:00.000000');
INSERT INTO `procesos_legales` VALUES ('Familiar','Maria Suarez','Pedro Garcia','Activo','APELACION','Custodia de los hijos',18,8,NULL,'PROCESO008','2024-11-09 16:00:00.000000');
INSERT INTO `procesos_legales` VALUES ('Civil','Juan Alvarez','Sofia Lopez','Activo','INICIO','Reclamación de propiedad',19,9,NULL,'PROCESO009','2024-11-10 11:45:00.000000');
INSERT INTO `procesos_legales` VALUES ('Penal','Victor Lopez','Carlos Diaz','Inactivo','FIN','Robo con violencia',20,10,'2024-11-12 17:00:00.000000','PROCESO010','2024-11-11 09:30:00.000000');
INSERT INTO `procesos_legales` VALUES ('Laboral','Sofia Morales','Fernando Perez','Activo','CONTESTACION','Incumplimiento de contrato',21,11,NULL,'PROCESO011','2024-11-12 10:15:00.000000');
INSERT INTO `procesos_legales` VALUES ('Familiar','Carlos Ruiz','Mariana Soto','Activo','PRESENTACION','Alimentos',22,12,NULL,'PROCESO012','2024-11-13 14:30:00.000000');
INSERT INTO `procesos_legales` VALUES ('Civil','Raul Fernandez','Miguel Torres','Activo','INICIO','Reclamación de deuda',23,13,NULL,'PROCESO013','2024-11-14 12:00:00.000000');
INSERT INTO `procesos_legales` VALUES ('Penal','Juliana Hernandez','Jorge Mora','Inactivo','SENTENCIA','Fraude fiscal',24,14,'2024-11-16 13:00:00.000000','PROCESO014','2024-11-15 08:45:00.000000');
INSERT INTO `procesos_legales` VALUES ('Laboral','Luis Garcia','Ricardo Castillo','Activo','ADMISION','Reclamación por horas extras',25,15,NULL,'PROCESO015','2024-11-16 09:30:00.000000');
INSERT INTO `procesos_legales` VALUES ('Familiar','Carmen Rios','Carlos Perez','Activo','APELACION','Divorcio y custodia',26,16,NULL,'PROCESO016','2024-11-17 10:00:00.000000');
INSERT INTO `procesos_legales` VALUES ('Civil','Esteban Torres','Maria Rodriguez','Activo','PRESENTACION','Accidente en la vía pública',27,17,NULL,'PROCESO017','2024-11-18 11:15:00.000000');
INSERT INTO `procesos_legales` VALUES ('Penal','Esteban López','Alejandra Suarez','Activo','AUDIENCIA','Delito de fraude',28,18,NULL,'PROCESO018','2024-11-19 14:45:00.000000');
INSERT INTO `procesos_legales` VALUES ('Laboral','Raul Mendoza','Pedro García','Activo','PROBATORIA','Acoso laboral',29,19,NULL,'PROCESO019','2024-11-20 16:30:00.000000');
INSERT INTO `procesos_legales` VALUES ('Familiar','Nuria Flores','Julio Sánchez','Activo','INICIO','Herencia',30,20,NULL,'PROCESO020','2024-11-21 12:00:00.000000');
/*!40000 ALTER TABLE `procesos_legales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'valbuena_abogados'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-20 19:50:03
