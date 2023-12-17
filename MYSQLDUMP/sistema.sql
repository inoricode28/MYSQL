-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sistema
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asistencia` (
  `id_asistencia` int(10) NOT NULL,
  `unico` varchar(25) NOT NULL,
  `user_id` int(10) NOT NULL,
  `hora_entrada` time NOT NULL,
  `fecha_entrada` date NOT NULL,
  `hora_base` time NOT NULL,
  `hora_salida` time NOT NULL,
  `fecha_salida` date NOT NULL,
  `min_tardanza` time NOT NULL,
  `asistencia` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrito` (
  `id_carrito` int(10) unsigned NOT NULL,
  `clave` varchar(10) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `id_producto` int(10) NOT NULL,
  `cantidad` double NOT NULL,
  `precio` double NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `nom_cat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `des_cat` varchar(100) NOT NULL,
  `id_prov` int(11) NOT NULL DEFAULT 155,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'LAPTOPS','Varios',7117),(2,'MONITORES','Varios',7117),(3,'TECLADOS','Varios',7117),(4,'MOUSE','Varios',7117),(5,'PARLENTES','Varios',7117),(6,'TARJETA DE VIDEO','Varios',7117),(7,'PROCESADORES','Varios',7117),(8,'USB','Varios',7117),(9,'Estabilizador','Varios',7117);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(255) NOT NULL,
  `telefono_cliente` char(30) NOT NULL,
  `email_cliente` varchar(64) NOT NULL,
  `direccion_cliente` varchar(255) NOT NULL,
  `status_cliente` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `doc` varchar(15) NOT NULL,
  `dni` varchar(10) NOT NULL,
  `vendedor` varchar(100) NOT NULL,
  `pais` text NOT NULL,
  `departamento` text NOT NULL,
  `provincia` text NOT NULL,
  `distrito` text NOT NULL,
  `cuenta` text NOT NULL,
  `tipo1` int(2) NOT NULL,
  `tienda` int(10) NOT NULL,
  `users` int(5) NOT NULL,
  `deuda` decimal(8,2) NOT NULL,
  `debe` decimal(8,2) NOT NULL,
  `nom_comercial` varchar(150) DEFAULT NULL,
  `id_sucursal` int(10) DEFAULT 1,
  PRIMARY KEY (`id_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=7123 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'EDITORIAL ARSAM S.A.C.','7150140','','AV. TRAPICHE MZA. . LOTE. 10-A CHACRA CERRO (GRIFO TRAPICHE) LIMA - LIMA - COMAS',1,'2019-09-17 17:18:10','20523712285','','MARCO CARRASCAL','Peru','LIMA','LIMA','COMAS','',2,1,0,0.00,0.00,NULL,1),(2,'BOOKS & CO. S.A.C.','6816290','','AV. EL POLO NRO. 670 URB. LIMA POLO HUNT (CENTRO COMERCIAL EL POLO II) LIMA - LIMA - SANTIAGO DE SURCO',1,'2019-09-17 17:18:49','20601338921','','YOLI GARCIA','Peru','LIMA','LIMA','SANTIAGO DE SURCO','',2,1,0,0.00,999999.99,NULL,1),(3,'CRISOL PLAN LECTOR S.A.C.','3991860','','AV. EL DERBY NRO. 254 URB. EL DERBY LIMA - LIMA - SANTIAGO DE SURCO',1,'2019-09-17 17:19:57','20547975911','','JUAN JOSÃ‰ AREVALO','Peru','LIMA','LIMA','SANTIAGO DE SURCO','',2,1,0,0.00,0.00,NULL,1),(4,'EBIOLIBROS S.A.C.','3493824','','CAL.SANTO DOMINGO NRO. 153 URB. SANTA PATRICIA 1RA ET. (A 4 CDRAS DEL BANCO DE CREDITO) LIMA - LIMA - LA MOLINA',1,'2019-09-17 17:20:40','20520702360','','','Peru','LIMA','LIMA','LA MOLINA','',2,1,0,0.00,3540.00,NULL,1),(5,'EDICIONES SM SOCIEDAD ANONIMA CERRADA','6148900','','CAL.MICAELA BASTIDAS NRO. 195 URB. SANTA ANA (AV. CANAVAL Y MOREYRA CDRA. 3 Y 4) LIMA - LIMA - SAN ISIDRO',1,'2019-09-17 17:21:19','20516589656','','TANIA VASQUEZ','Peru','LIMA','LIMA','SAN ISIDRO','',2,1,0,0.00,999999.99,NULL,1),(6,'EDITORIAL VICENS VIVES PERU S.AC.','4448833','','JR. FELIX DIBOS NRO. 1020 LIMA - LIMA - MAGDALENA DEL MAR',1,'2019-09-17 17:22:04','20504330720','','','Peru','LIMA','LIMA','MAGDALENA DEL MAR','',2,1,0,0.00,85597.20,NULL,1),(7,'EDUCACTIVA S.A.C.','7103000','','AV. MANUEL OLGUIN NRO. 211 INT. 501 URB. LOS GRANADOS LIMA - LIMA - SANTIAGO DE SURCO',1,'2019-09-17 17:22:44','20510347243','2051034724','CATHERINE MEJIA / LUZ GONZALES','Peru','LIMA','LIMA','SANTIAGO DE SURCO','',2,1,0,0.00,999999.99,'EDUCACTIVA S.A.C.',1),(8,'EMPRESA EDITORA MACRO E.I.R.L','7480560','','AV. PASEO LA REPUBLICA NRO. 5613 URB. SAN ANTONIO (ALT. PUENTE RICARDO PALMA DE VIA EXPRESA) LIMA - LIMA - MIRAFLORES',1,'2019-09-17 17:23:17','20432715044','','JANET CHAVEZ','Peru','LIMA','LIMA','MIRAFLORES','',2,1,0,0.00,0.00,NULL,1),(9,'EUREKA LIBROS PERU S.A.C.','2373408','','AV. SANTIAGO DE SURCO NRO. 3010 INT. 105 URB. LA CASTELLANA (ALTURA OVALO HIGUERETA) LIMA - LIMA - SANTIAGO DE SURCO',1,'2019-09-17 17:24:01','20602241298','','JOSE LUIS GARATE','Peru','LIMA','LIMA','SANTIAGO DE SURCO','',2,1,0,0.00,30755.00,NULL,1),(10,'EXPRESSO BIBLIOGRAFICO PERU S.A.C.','2266321','','CAL.LOS MILANOS NRO. 154 URB. EL PALOMAR (A ESPALDAS DE LA CLINICA RICARDO PALMA) LIMA - LIMA - SAN ISIDRO',1,'2019-09-17 17:24:44','20501704548','','','Peru','LIMA','LIMA','SAN ISIDRO','',2,1,0,0.00,0.00,NULL,1),(11,'MACMILLAN PUBLISHERS S.A.C.','4410311','','CAL.MANUEL TOVAR NRO. 252 URB. SANTA CRUZ LIMA - LIMA - MIRAFLORES',1,'2019-09-17 17:25:26','20332940008','','LISSETH RAMOS','Peru','LIMA','LIMA','MIRAFLORES','',2,1,0,0.00,999999.99,NULL,1),(12,'NUEVAS TECNICAS EDUCATIVAS S.A.C.','2058642','','JR. R FLORES NRO. 240 URB. STA CATALINA (ALT. CDRA. 21 VIA EXPRESA) LIMA - LIMA - LA VICTORIA',1,'2019-09-17 17:26:18','20144976411','','WILLIAM','Peru','LIMA','LIMA','LA VICTORIA','',2,1,0,0.00,0.00,NULL,1),(13,'SPECIAL BOOK SERVICES SAC','','','JR. MCAL FELIPE SANTIAGO SALAVERRY NRO. 542 (ESPALDA HOGAR CLÃNICA SAN JUAN DE DIOS) LIMA - LIMA - SAN LUIS',1,'2019-09-17 17:26:55','20334403166','2033440316','JOSE LUIS MIRANDA','Peru','LIMA','LIMA','SAN LUIS','',2,1,0,0.00,780517.74,NULL,1),(14,'Clientes Varios','','','-',1,'2019-10-16 14:02:08','-','-','','Peru','LIMA','LIMA','SAN MIGUEL','',1,1,0,2604.50,0.00,'Clientes Varios',1),(7122,'EMILI','935681036','EMILI@Spring.com','jr.las coraleinas 458',1,'2023-08-25 20:58:56','10238596367','42229274','angie','Peru','Lima','lima','San Borja','',1,1,0,0.00,0.00,'EMILI',1),(7120,'Elizabeth','935681036','Elizabeth@Spring.com','jr.las coraleinas 458',1,'2023-08-25 18:20:09','42229274','42229274','angie','Peru','Lima','lima','San Borja','',1,1,0,0.00,0.00,'Elizabeth',1),(7119,'Memory King S.A','935681036','impacto@Spring.com','jr.las coraleinas 458',1,'2023-08-25 18:16:55','2023859670','52269219','','Peru','Lima','lima','San Borja','',2,1,0,0.00,0.00,NULL,1),(7118,'Joseph Cristpher Mosquera','967123567','jopseh@spring.com','jr.calendulas 876',1,'2023-08-11 14:19:52','52269219','52269219','','Peru','Lima','lima','','',1,1,0,100.00,0.00,'Joseph Cristpher Mosquera',1),(7116,'EDITORIAL LANCOM','','','',1,'2023-02-25 11:23:38','','','','Peru','','','','',2,1,0,0.00,0.00,NULL,1),(7117,'DELTRON S.A.','935681036','','jr. las coralinas 458',1,'2023-08-11 12:42:35','20238596369','','','Peru','','lima','San Borja','',2,1,0,0.00,1320.00,NULL,1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentarios` (
  `id_comentario` int(10) NOT NULL,
  `id_producto` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `comentario` text NOT NULL,
  `correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobante_pago`
--

DROP TABLE IF EXISTS `comprobante_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprobante_pago` (
  `id_comprobante` int(2) NOT NULL,
  `cod_comprobante` varchar(3) NOT NULL,
  `des_comprobante` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante_pago`
--

LOCK TABLES `comprobante_pago` WRITE;
/*!40000 ALTER TABLE `comprobante_pago` DISABLE KEYS */;
INSERT INTO `comprobante_pago` VALUES (1,'01','Factura'),(2,'03','Boleta de Venta'),(3,'100','Guia'),(4,'02','Recibo por Honorarios'),(5,'00','Otros (especificar)'),(6,'05','Boleto de compa&ntilde;a de aviaci&oacute;n comercial por el servicio de transporte a&eacute;reo de pasajeros'),(7,'16','Boleto de viaje emitido por las empresas de transporte p&uacute;blico interprovincial de pasajeros dentro del pa&sacute;s'),(8,'15','Boleto emitido por las empresas de transporte p&uacute;blico urbano de pasajeros'),(9,'19','Boleto o entrada por atracciones y espect&aacute;culos p&uacute;blicos'),(10,'06','Carta de porte a&eacute;reo por el servicio de transporte de carga a&eacute;rea'),(11,'24','Certificado de pago de regal&iacute;as emitidas por PERUPETRO S.A'),(12,'91','Comprobante de No Domiciliado                                                 '),(13,'20','Comprobante de Retenci&oacute;n'),(14,'22','Comprobante por Operaciones No Habituales'),(15,'21','Conocimiento de embarque por el servicio de transporte de carga mar&iacute;tima'),(16,'53','Declaraci&oacute;n de Mensajer&iacute;a o Courier                                         '),(17,'50','Declaraci&oacute;n &uacute;nica de Aduanas - Importaci&oacute;n definitiva                 '),(18,'52','Despacho Simplificado - Importaci&oacute;n Simplificada                        '),(19,'25','Documento de Atribuci&oacute;n (Ley del Impuesto General a las Ventas e Impuesto Selectivo al Consumo, Art. 19, &uacute;ltimo p?rrafo, R.S. Nro 022-98-SUNAT).'),(20,'34','Documento del Operador'),(21,'35','Documento del Part&iacute;cipe'),(22,'13','Documento emitido por bancos, instituciones financieras, crediticias y de seguros que se encuentren bajo el control de la Superintendencia de Banca y Seguros'),(23,'17','Documento emitido por la Iglesia Cat&oacute;lica por el arrendamiento de bienes inmuebles'),(24,'18','Documento emitido por las Administradoras Privadas de Fondo de Pensiones que se encuentran bajo la supervisi&oacute;n de la Superintendencia de Administradoras Privadas de Fondos de Pensiones'),(25,'29','Documentos emitidos por la COFOPRI en calidad de oferta de venta de terrenos, los correspondientes a las subastas p&uacute;blicas y a la retribuci&oacute;n de los servicios que presta'),(26,'30','Documentos emitidos por las empresas que desempe&ntilde;an el rol adquirente en los sistemas de pago mediante tarjetas de cr&eacute;dito y d&eacute;bito'),(27,'32','Documentos emitidos por las empresas recaudadoras de la denominada Garant&iacute;a de Red Principal a la que hace referencia el numeral 7.6 del art&iacute;culo 7 de la Ley Nro 27133 ? Ley de Promoci&oacute;n del Desarrollo de la Industria del Gas Natural'),(28,'37','Documentos que emitan los concesionarios del servicio de revisiones t&eacute;cnicas vehiculares, por la prestaci&oacute;n de dicho servicio'),(29,'96','Exceso de cr&eacute;dito fiscal por retiro de bienes                           '),(30,'09','Gu?a de remisi&oacute;n - Remitente'),(31,'31','Gu&iacute;a de Remisi&oacute;n - Transportista'),(32,'54','Liquidaci&oacute;n de Cobranza                                                     '),(33,'04','Liquidaci&oacute;n de compra'),(34,'07','Nota de cr&eacute;dito'),(35,'97','Nota de Cr&eacute;dito - No Domiciliado'),(36,'87','Nota de Cr&eacute;dito Especial'),(37,'08','Nota de d&eacute;bito'),(38,'98','Nota de D&eacute;bito - No Domiciliado'),(39,'88','Nota de D&eacute;bito Especial'),(40,'99','Otros -Consolidado de Boletas de Venta'),(41,'11','P&oacute;liza emitida por las Bolsas de Valores, Bolsas de Productos o Agentes de Intermediaci&oacute;n por operaciones realizadas en las Bolsas de Valores o Productos o fuera de las mismas, autorizadas por CONASEV'),(42,'23','P&oacute;lizas de Adjudicaci&oacute;n emitidas con ocasi&oacute;n del remate o adjudicaci&oacute;n de bienes por venta forzada, por los martilleros o las entidades que rematen o subasten bienes por cuenta de terceros'),(43,'36','Recibo de Distribuci&oacute;n de Gas Natural'),(44,'10','Recibo por Arrendamiento'),(45,'26','Recibo por el Pago de la Tarifa por Uso de Agua Superficial con fines agrarios y por el pago de la Cuota para la ejecuci&oacute;n de una determinada obra o actividad acordada por la Asamblea General de la Comisi&oacute;n de Regantes o Resoluci&oacute;n expedida por el Jefe de la Unidad de Aguas y de Riego (Decreto Supremo Nro 003-90-AG, Arts. 28 y 48)'),(46,'14','Recibo por servicios p&uacute;blicos de suministro de energ&iacute;a el&eacute;ctrica, agua, tel&eacute;fono, telex y telegr&aacute;ficos y otros servicios complementarios que se incluyan en el recibo de servicio p&uacute;blico.'),(47,'27','Seguro Complementario de Trabajo de Riesgo'),(48,'28','Tarifa Unificada de Uso de Aeropuerto'),(49,'12','Ticket o cinta emitido por m&aacute;quina registradora');
/*!40000 ALTER TABLE `comprobante_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comunicacion_baja`
--

DROP TABLE IF EXISTS `comunicacion_baja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comunicacion_baja` (
  `comunicacion_baja_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `comunicacion_fecha` date NOT NULL,
  `numero` tinyint(3) DEFAULT NULL,
  `ticket` varchar(15) DEFAULT NULL,
  `estado` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunicacion_baja`
--

LOCK TABLES `comunicacion_baja` WRITE;
/*!40000 ALTER TABLE `comunicacion_baja` DISABLE KEYS */;
INSERT INTO `comunicacion_baja` VALUES (1,'2020-09-05 13:21:10','2020-01-01',1,NULL,1),(2,'2020-09-05 13:21:22','2020-01-01',2,NULL,1),(3,'2020-09-05 13:22:30','2020-01-01',3,NULL,1),(4,'2020-09-05 13:22:39','2020-01-02',1,NULL,1),(5,'2020-09-05 13:22:47','2020-01-02',2,NULL,1),(8,'2020-09-05 13:48:55','2020-09-03',1,NULL,1);
/*!40000 ALTER TABLE `comunicacion_baja` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_comunicacionb_01` BEFORE INSERT ON `comunicacion_baja` FOR EACH ROW BEGIN
	DECLARE numerox INT;
	SET numerox = NULL;
	SELECT MAX(comunicacion_baja.numero) INTO numerox FROM comunicacion_baja WHERE comunicacion_baja.comunicacion_fecha = NEW.comunicacion_fecha;
	IF ISNULL(numerox) THEN
		SET NEW.numero = 1;
	ELSE
		SET NEW.numero = numerox+1;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_comunicacionb_02` AFTER INSERT ON `comunicacion_baja` FOR EACH ROW BEGIN
	UPDATE facturas SET resumen_bajas_id = NEW.comunicacion_baja_id WHERE DATE(fecha_factura) = NEW.comunicacion_fecha AND estado_fe < 4;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `configuracion`
--

DROP TABLE IF EXISTS `configuracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuracion` (
  `configuracion_id` int(11) NOT NULL,
  `opcion` varchar(50) DEFAULT NULL,
  `valor` longtext DEFAULT NULL,
  `auto` tinyint(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracion`
--

LOCK TABLES `configuracion` WRITE;
/*!40000 ALTER TABLE `configuracion` DISABLE KEYS */;
INSERT INTO `configuracion` VALUES (1,'envia_datos_sunat','produccion',1),(2,'envia_datos_sunat','beta',0),(3,'moneda','soles',1),(4,'moneda','dolares',0),(5,'igv','exonerado',1),(6,'igv','gravado',0);
/*!40000 ALTER TABLE `configuracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultas` (
  `id` int(10) NOT NULL,
  `tipo` int(2) NOT NULL,
  `a1` text NOT NULL,
  `a2` text NOT NULL,
  `a3` text NOT NULL,
  `a4` text NOT NULL,
  `a5` text NOT NULL,
  `a6` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` VALUES (0,37,'','','','','','');
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto` (
  `id_contacto` int(10) unsigned NOT NULL,
  `nom_cont` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  `tema` varchar(100) NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentas` (
  `id` int(10) unsigned zerofill NOT NULL,
  `cod_cue` int(4) NOT NULL,
  `nom_cue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datosempresa`
--

DROP TABLE IF EXISTS `datosempresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datosempresa` (
  `nom_emp` varchar(200) NOT NULL,
  `id_emp` int(2) NOT NULL,
  `tienda` int(10) NOT NULL,
  `des_emp` text NOT NULL,
  `mis_emp` text NOT NULL,
  `vis_emp` text NOT NULL,
  `tel_emp` varchar(200) NOT NULL,
  `dir_emp` varchar(300) NOT NULL,
  `email_emp` text NOT NULL,
  `face_emp` varchar(200) NOT NULL,
  `tiwter_emp` text NOT NULL,
  `youtube_emp` text NOT NULL,
  `linkedin_emp` text NOT NULL,
  `dolar` float NOT NULL,
  `alerta` double NOT NULL,
  `logo` varchar(20) NOT NULL,
  `fotovision` varchar(20) NOT NULL,
  `fotomision` varchar(20) NOT NULL,
  `slider1` varchar(20) NOT NULL,
  `slider2` varchar(20) NOT NULL,
  `slider3` varchar(20) NOT NULL,
  `slider4` varchar(20) NOT NULL,
  `slider5` varchar(20) NOT NULL,
  `comentario1` text NOT NULL,
  `comentario2` text NOT NULL,
  `comentario3` text NOT NULL,
  `comentario4` text NOT NULL,
  `comentario5` text NOT NULL,
  `precio2` decimal(7,2) NOT NULL,
  `precio3` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datosempresa`
--

LOCK TABLES `datosempresa` WRITE;
/*!40000 ALTER TABLE `datosempresa` DISABLE KEYS */;
INSERT INTO `datosempresa` VALUES ('',1,1,'','','','','','','','','','linkedin',3.2,4,'logo.jpg','vision.jpg','mision.jpg','fotoHRtLZR2r.jpg','fotogMheCAPJ.jpg','fotogc7lAaze.jpg','','','','','','','',10.00,20.00);
/*!40000 ALTER TABLE `datosempresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_factura`
--

DROP TABLE IF EXISTS `detalle_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_factura` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(10) NOT NULL,
  `id_vendedor` int(10) NOT NULL,
  `numero_factura` varchar(15) NOT NULL,
  `ot` varchar(20) NOT NULL,
  `id_producto` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(7,2) NOT NULL,
  `tienda` int(2) NOT NULL,
  `activo` int(1) NOT NULL,
  `ven_com` int(2) NOT NULL,
  `fecha` datetime NOT NULL,
  `precio_compra` decimal(7,2) NOT NULL,
  `tipo_doc` int(2) NOT NULL,
  `inv_ini` double NOT NULL,
  `moneda` decimal(4,2) NOT NULL,
  `folio` varchar(5) NOT NULL,
  `dscto` decimal(19,4) DEFAULT 0.0000,
  PRIMARY KEY (`id_detalle`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura`
--

LOCK TABLES `detalle_factura` WRITE;
/*!40000 ALTER TABLE `detalle_factura` DISABLE KEYS */;
INSERT INTO `detalle_factura` VALUES (1,14,60,'64','0','3',1,920.00,1,1,1,'2023-08-11 14:12:54',700.00,1,35,1.00,'B007',0.0000),(2,7118,60,'65','0','9',1,100.00,1,1,1,'2023-08-11 14:19:59',50.00,1,35,1.00,'B007',0.0000),(3,7118,60,'66','0','9',1,100.00,1,1,1,'2023-08-11 14:21:10',50.00,1,34,1.00,'B007',0.0000),(4,7118,60,'66','0','8',1,120.00,1,1,1,'2023-08-11 14:21:10',70.00,1,35,1.00,'B007',0.0000),(5,7117,60,'001-55451','0','9',1,100.00,1,1,2,'2023-08-11 14:22:07',0.00,1,33,1.00,'',0.0000),(6,7117,60,'001-55451','0','8',1,120.00,1,1,2,'2023-08-11 14:22:07',0.00,1,34,1.00,'',0.0000),(7,7118,60,'67','0','9',3,100.00,1,1,1,'2023-08-11 15:04:15',100.00,1,34,1.00,'B007',0.0000),(8,7118,60,'67','0','8',3,120.00,1,1,1,'2023-08-11 15:04:15',120.00,1,35,1.00,'B007',0.0000),(9,7117,60,'001-55455','0','9',10,100.00,1,1,2,'2023-08-11 15:05:45',0.00,1,31,1.00,'',0.0000),(10,14,60,'68','0','Mantenimiento de Computadoras',1,60.00,1,1,1,'2023-08-11 15:11:46',0.00,1,0,1.00,'B007',0.0000),(11,14,60,'69','0','8',5,120.00,1,1,1,'2023-08-11 15:14:53',120.00,1,32,1.00,'B007',0.0000),(12,14,60,'69','0','9',5,100.00,1,1,1,'2023-08-11 15:14:53',100.00,1,41,1.00,'B007',0.0000),(13,14,60,'70','0','10',1,1200.00,1,1,1,'2023-08-11 15:15:41',800.00,1,35,1.00,'B007',0.0000),(14,7118,60,'71','0','9',1,100.00,1,1,1,'2023-08-11 17:56:31',100.00,1,36,1.00,'B007',0.0000),(15,7118,60,'72','0','9',1,100.00,1,1,1,'2023-08-12 13:41:19',100.00,1,35,1.00,'B007',0.0000),(16,7117,60,'001-55478','0','9',1,100.00,1,1,2,'2023-08-12 13:42:16',0.00,1,34,1.00,'',0.0000),(17,7118,60,'73','0','10',1,1200.00,1,1,1,'2023-08-24 19:56:42',800.00,1,34,1.00,'B007',0.0000),(18,7118,60,'73','0','11',1,1300.00,1,1,1,'2023-08-24 19:56:42',900.00,1,35,1.00,'B007',0.0000),(19,7118,63,'42229274','0','12',1,120.00,1,1,1,'2023-08-25 20:59:32',80.00,1,50,1.00,'B007',0.0000),(20,7118,63,'42229274','0','13',1,110.00,1,1,1,'2023-08-25 20:59:32',80.00,1,35,1.00,'B007',0.0000),(21,7120,63,'75','0','12',1,120.00,1,1,1,'2023-08-25 21:00:51',80.00,1,49,1.00,'B007',0.0000),(22,7120,63,'75','0','13',1,110.00,1,1,1,'2023-08-25 21:00:51',80.00,1,34,1.00,'B007',0.0000);
/*!40000 ALTER TABLE `detalle_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documento` (
  `id_documento` int(2) NOT NULL AUTO_INCREMENT,
  `comprobante_id` int(2) DEFAULT NULL,
  `tipo` varchar(12) NOT NULL,
  `numero` double NOT NULL,
  `tienda1` varchar(10) NOT NULL,
  `tienda2` varchar(10) NOT NULL,
  `tienda3` varchar(10) NOT NULL,
  `tienda4` varchar(10) NOT NULL,
  `tienda5` varchar(10) NOT NULL,
  `tienda6` varchar(10) NOT NULL,
  `tienda7` varchar(10) DEFAULT NULL,
  `tienda8` varchar(10) DEFAULT NULL,
  `folio1` varchar(5) NOT NULL,
  `folio2` varchar(5) NOT NULL,
  `folio3` varchar(5) NOT NULL,
  `folio4` varchar(5) NOT NULL,
  `folio5` varchar(5) NOT NULL,
  `folio6` varchar(5) NOT NULL,
  `folio7` varchar(5) DEFAULT NULL,
  `folio8` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id_documento`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
INSERT INTO `documento` VALUES (2,1,'factura',51,'155','55','29','43','58','201','4','0','F007','F002','F004','F003','F005','F001','F006','F008'),(1,2,'boleta',13,'75','3375','2321','4720','2642','12227','2026','41','B007','B002','B004','B003','B005','B001','B006','B008'),(3,3,'guia',58,'21717','1','3','','1','0',NULL,'0','F007','G002','G004','','','G001',NULL,'G008'),(4,30,'remision',2,'8','1','4','','','',NULL,NULL,'','','','','','',NULL,NULL),(5,37,'nota_debito',18,'45','5','1','','','1',NULL,'0','F001','','','','','ND001',NULL,'F008'),(6,34,'nota_credito',10,'49','78','7','113','79','230','33','0','F007','F002','F004','F003','F005','NC001','F006','F008'),(7,5,'cotizacion',1,'106','1','2','','','1',NULL,'0','F001','F002','F004','','','P001',NULL,'P008'),(8,5,'nota_dev',1,'201','0','0','0','0','0',NULL,'0','N001','N002','','','','D001',NULL,'N008');
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT current_timestamp(),
  `estado_fe` tinyint(2) DEFAULT 1,
  `folio` varchar(5) NOT NULL,
  `numero_factura` varchar(15) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `fecha_entrega` datetime NOT NULL,
  `ot` varchar(20) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `baja` varchar(30) NOT NULL,
  `fecha_baja` datetime DEFAULT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` int(1) NOT NULL,
  `total_venta` decimal(19,2) NOT NULL,
  `deuda_total` decimal(19,2) NOT NULL,
  `estado_factura` text NOT NULL,
  `tienda` int(2) NOT NULL,
  `ven_com` int(2) NOT NULL,
  `activo` int(2) NOT NULL,
  `servicio` int(2) NOT NULL,
  `moneda` double NOT NULL,
  `nombre` text NOT NULL,
  `obs` text NOT NULL,
  `cuenta1` varchar(100) NOT NULL,
  `cuenta2` varchar(100) NOT NULL,
  `dias` int(2) NOT NULL,
  `observacion` varchar(150) DEFAULT NULL,
  `documento` varchar(30) DEFAULT NULL,
  `tkt_envio` varchar(15) DEFAULT NULL,
  `tkt_baja` varchar(15) DEFAULT NULL,
  `resumen_diario_id` int(11) DEFAULT NULL,
  `resumen_baja_id` int(11) DEFAULT NULL,
  `val_hash` varchar(100) DEFAULT NULL,
  `fec_actualizado` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_factura`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,'2023-08-11 14:13:01',1,'B007','64','2023-08-11 14:12:54','2023-08-11 14:12:54','',14,'0',NULL,60,1,920.00,0.00,'1',1,1,1,1,1,'1','','0','0',0,'','',NULL,NULL,NULL,NULL,NULL,'2023-08-11 14:58:58'),(2,'2023-08-11 14:20:50',1,'B007','65','2023-08-11 14:19:59','2023-08-11 14:19:59','',7118,'0',NULL,60,1,100.00,0.00,'1',1,1,1,1,1,'1','','0','0',0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(3,'2023-08-11 14:21:32',1,'B007','66','2023-08-11 14:21:10','2023-08-11 14:21:10','',7118,'0',NULL,60,1,220.00,0.00,'1',1,1,1,1,1,'1','','0','0',0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(4,'2023-08-11 14:22:55',1,'','001-55451','2023-08-11 14:22:07','2023-08-11 14:22:07','0',7117,'0',NULL,60,4,220.00,220.00,'1',1,2,1,0,1,'','NULL','0','0',0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(5,'2023-08-11 15:04:55',1,'B007','67','2023-08-11 15:04:15','2023-08-11 15:04:15','',7118,'0',NULL,60,1,660.00,0.00,'1',1,1,1,1,1,'1','','0','0',0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(6,'2023-08-11 15:06:12',1,'','001-55455','2023-08-11 15:05:45','2023-08-11 15:05:45','0',7117,'0',NULL,60,4,1000.00,1000.00,'1',1,2,1,0,1,'','NULL','0','0',0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(7,'2023-08-11 15:12:23',1,'B007','68','2023-08-11 15:11:46','2023-08-11 15:11:46','',14,'0',NULL,60,1,60.00,0.00,'1',1,1,1,1,1,'1','','0','0',0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(8,'2023-08-11 15:15:06',1,'B007','69','2023-08-11 15:14:53','2023-08-11 15:14:53','',14,'0',NULL,60,1,1100.00,0.00,'1',1,1,1,1,1,'1','','0','0',0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(9,'2023-08-11 15:16:14',1,'B007','70','2023-08-11 15:15:41','2023-08-11 15:15:41','',14,'0',NULL,60,1,1200.00,0.00,'1',1,1,1,1,1,'1','','0','0',0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(10,'2023-08-11 17:59:01',1,'B007','71','2023-08-11 17:56:31','2023-08-11 17:56:31','',7118,'0',NULL,60,4,100.00,100.00,'1',1,1,1,1,1,'1','','0','0',15,'','',NULL,NULL,NULL,NULL,NULL,NULL),(11,'2023-08-12 13:41:49',1,'B007','72','2023-08-12 13:41:19','2023-08-12 13:41:19','',7118,'0',NULL,60,1,100.00,0.00,'1',1,1,1,1,1,'1','','0','0',0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(12,'2023-08-12 13:42:41',1,'','001-55478','2023-08-12 13:42:16','2023-08-12 13:42:16','0',7117,'0',NULL,60,4,100.00,100.00,'1',1,2,1,0,1,'','NULL','0','0',0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(13,'2023-08-24 19:58:11',1,'B007','73','2023-08-24 19:56:42','2023-08-24 19:56:42','',7118,'0',NULL,60,1,2500.00,0.00,'1',1,1,1,1,1,'1','','0','0',0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(14,'2023-08-25 21:00:42',1,'B007','42229274','2023-08-25 20:59:32','2023-08-25 20:59:32','',7118,'0',NULL,63,1,230.00,0.00,'1',1,1,1,1,1,'1','','0','0',0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(15,'2023-08-25 21:01:23',1,'B007','75','2023-08-25 21:00:51','2023-08-25 21:00:51','',7120,'0',NULL,63,1,230.00,0.00,'1',1,1,1,1,1,'1','','0','0',0,'','',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos`
--

DROP TABLE IF EXISTS `fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos` (
  `id_foto` int(10) NOT NULL,
  `nom_foto` varchar(30) NOT NULL,
  `archivo` text NOT NULL,
  `largo` varchar(10) NOT NULL,
  `ancho` varchar(10) NOT NULL,
  `ubi_pag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos`
--

LOCK TABLES `fotos` WRITE;
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` VALUES (15,'logo','logo.jpg','394','102','logo'),(18,'Quienes somos','quienesomos.jpg','360','203','quienesomos'),(20,'mision','mision.jpg','800','600','fotomision'),(22,'vision','vision.jpg','800','600','fotovision'),(23,'slider1','fotoHRtLZR2r.jpg','870','421','slider1'),(24,'slider2','fotogMheCAPJ.jpg','870','421','slider2'),(25,'slider3','fotogc7lAaze.jpg','870','424','slider3'),(26,'nombre1','vision.jpg','340','340','fotovision');
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guia`
--

DROP TABLE IF EXISTS `guia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guia` (
  `id` int(10) unsigned NOT NULL,
  `id_doc` int(10) NOT NULL,
  `guia` double NOT NULL,
  `dir_par` varchar(100) NOT NULL,
  `dom_lleg` text NOT NULL,
  `cont_lleg` text NOT NULL,
  `tel_lleg` text NOT NULL,
  `hor_lleg` text NOT NULL,
  `vehiculo` text NOT NULL,
  `inscripcion` text NOT NULL,
  `lic` text NOT NULL,
  `fecha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guia`
--

LOCK TABLES `guia` WRITE;
/*!40000 ALTER TABLE `guia` DISABLE KEYS */;
INSERT INTO `guia` VALUES (1,6,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(2,8,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(3,10,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(4,12,100,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIGUEL','','','','','','','2019-12-10'),(5,13,1,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIGUEL','','','','','','','2019-12-10'),(6,14,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIGUEL','','','','','','',''),(7,34,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(8,33,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(9,31,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(10,39,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(11,30,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(12,29,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(13,28,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(14,27,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(15,26,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(16,50,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(17,48,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(18,57,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(19,60,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(20,63,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(21,67,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(22,69,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(23,78,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(24,81,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(25,86,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(26,99,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(27,103,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(28,191,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(29,216,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(30,186,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(31,179,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(32,24,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(33,299,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(34,317,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(35,319,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(36,335,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(37,181,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(38,180,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(39,141,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(40,357,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(41,355,20349,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','AV. MANCO CAPAC 603','BERLI BERROSPI','','8AM A 4PM','','','','2020-01-25'),(42,360,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(43,362,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(44,363,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(45,365,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(46,367,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(47,369,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(48,371,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(49,373,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(50,375,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(51,377,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(52,379,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(53,381,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(54,383,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(55,385,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(56,387,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(57,389,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(58,391,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(59,405,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(60,416,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(61,424,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(62,434,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(63,430,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(64,437,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(65,300,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(66,443,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(67,393,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(68,398,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(69,399,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(70,400,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(71,401,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(72,402,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(73,403,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(74,413,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(75,414,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(76,415,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(77,412,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(78,411,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(79,487,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(80,489,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(81,492,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(82,494,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(83,496,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(84,498,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(85,157,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(86,163,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(87,518,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(88,529,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(89,538,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(90,176,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(91,174,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(92,455,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(93,456,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(94,457,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(95,458,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(96,460,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(97,461,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(98,464,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(99,463,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(100,462,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(101,623,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(102,626,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(103,606,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(104,404,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(105,841,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(106,844,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(107,849,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(108,853,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(109,852,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(110,858,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(111,862,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(112,865,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(113,868,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(114,871,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(115,873,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(116,876,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(117,879,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(118,881,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(119,883,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(120,885,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(121,888,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(122,893,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(123,895,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(124,725,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(125,693,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(126,193,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(127,194,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(128,351,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(129,1082,1,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(130,281,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(131,242,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(132,1254,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(133,1465,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(134,1470,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(135,1472,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(136,1478,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(137,1484,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(138,1488,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(139,1490,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(140,1494,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(141,1499,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(142,1630,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(143,1378,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(144,2118,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(145,2893,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(146,900,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(147,902,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(148,899,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(149,901,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(150,903,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(151,1387,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(152,1918,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(153,1921,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(154,1922,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(155,1923,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(156,1924,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(157,1925,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(158,1969,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(159,3048,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(160,3075,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(161,3078,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(162,3140,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(163,3090,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(164,3170,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(165,21,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(166,249,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(167,3495,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(168,3531,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(169,3534,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(170,3536,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(171,3538,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(172,3540,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(173,3542,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(174,3544,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(175,3546,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(176,3548,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(177,3550,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(178,3552,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(179,3554,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(180,305,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(181,237,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(182,292,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(183,4005,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(184,4007,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(185,4010,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(186,4012,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(187,4014,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(188,4025,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(189,4039,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(190,4041,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(191,4630,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(192,4632,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(193,4636,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(194,4638,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(195,4641,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(196,4696,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(197,565,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(198,3575,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(199,5658,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(200,5825,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(201,5827,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(202,5876,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(203,5905,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(204,7754,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(205,135,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(206,301,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(207,285,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(208,7954,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(209,8407,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(210,8457,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(211,280,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(212,236,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(213,8584,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(214,8521,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(215,8503,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(216,9655,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(217,9727,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(218,165,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(219,10885,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(220,11338,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(221,11951,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(222,9447,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(223,11962,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(224,11969,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(225,11976,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(226,11979,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(227,12248,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(228,14347,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(229,14349,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(230,14353,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(231,14356,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(232,14360,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(233,14363,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(234,14373,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(235,14376,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(236,14380,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(237,14493,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(238,15184,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(239,15187,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(240,15380,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(241,15550,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(242,19337,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(243,19338,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(244,19340,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(245,19342,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(246,19344,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(247,19346,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(248,19348,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(249,19350,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(250,19352,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(251,19354,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(252,19628,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(253,10801,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(254,19693,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(255,12528,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(256,349,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(257,19697,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(258,12535,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(259,19692,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(260,19709,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(261,19713,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(262,19374,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(263,19724,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(264,25552,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(265,24819,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(266,26275,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(267,25820,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(268,26567,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(269,26657,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(270,27068,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(271,27433,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(272,27619,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(273,27629,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(274,27150,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(275,27720,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(276,27722,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(277,27742,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(278,28054,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(279,28047,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(280,28148,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(281,28673,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(282,28831,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(283,29337,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(284,30079,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(285,30128,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','',''),(286,30246,0,'AV. RAFAEL ESCARDO NRO. 759 URB. MRGA 7A ETP (ALT. DE HIRAOKA DE AV LA MARINA) LIMA - LIMA - SAN MIG','','','','','','','','');
/*!40000 ALTER TABLE `guia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laborales`
--

DROP TABLE IF EXISTS `laborales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laborales` (
  `id_laboral` int(10) NOT NULL,
  `cod_var` varchar(10) NOT NULL,
  `variables` text NOT NULL,
  `des_var` text NOT NULL,
  `col_var` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laborales`
--

LOCK TABLES `laborales` WRITE;
/*!40000 ALTER TABLE `laborales` DISABLE KEYS */;
INSERT INTO `laborales` VALUES (1,'DF','DESCANSO FISICO','DESCANSO FISICO','#8080ff'),(0,'A','ASISTENCIA','ASISTENCIA','#2E9AFE'),(3,'V','VACACIONES','VACACIONES','#ffff00'),(4,'LM','LICENCIA MATERNIDAD','LICENCIA MATERNIDAD','#0080c0'),(5,'DM','DESCANSO MEDICO','DESCANSO MEDICO','#ff00ff');
/*!40000 ALTER TABLE `laborales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos` (
  `id` int(10) NOT NULL,
  `id_pago` int(10) NOT NULL,
  `id_factura` int(10) NOT NULL,
  `pago` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,29284,1942,36498.00),(2,29284,1939,58324.00),(3,29284,2092,36594.00),(4,29284,2093,18584.00),(5,29285,2093,39740.00),(6,29285,2700,10260.00);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_producto` char(20) NOT NULL,
  `nombre_producto` text NOT NULL,
  `status_producto` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `precio_producto` decimal(7,2) NOT NULL,
  `costo_producto` decimal(7,2) NOT NULL,
  `mon_costo` decimal(4,2) NOT NULL,
  `mon_venta` int(2) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `b1` decimal(5,2) NOT NULL,
  `b2` decimal(5,2) NOT NULL,
  `b3` decimal(5,2) NOT NULL,
  `b4` decimal(5,2) NOT NULL,
  `b5` decimal(5,2) NOT NULL,
  `b6` decimal(5,2) NOT NULL,
  `b7` decimal(5,2) DEFAULT 0.00,
  `b8` decimal(5,2) DEFAULT 0.00,
  `cat_pro` int(2) NOT NULL,
  `pro_ser` int(2) NOT NULL,
  `foto1` varchar(100) NOT NULL,
  `foto2` varchar(100) NOT NULL,
  `foto3` varchar(100) NOT NULL,
  `foto4` varchar(100) NOT NULL,
  `web` int(2) NOT NULL,
  `pre_web` decimal(7,2) NOT NULL,
  `descripcion` text NOT NULL,
  `descripcion1` text NOT NULL,
  `megusta` int(10) NOT NULL,
  `nomegusta` int(10) NOT NULL,
  `precio2` decimal(7,2) NOT NULL,
  `precio3` decimal(7,2) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (10,'L00010','VGA PNY GEFORCE NVIDIA RTX 3060 12GB GDDR6 XLR8 GAMING',0,'2023-08-11 13:49:05',1200.00,800.00,1.00,1,'PNY','RTX 3060','Negro',33.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,6,1,'producto10.jpg','nuevo.jpg','nuevo.jpg','nuevo.jpg',0,1200.00,'','',0,0,1200.00,1200.00,0),(11,'L00011','PROCESADOR AMD RYZEN 3 3200G',0,'2023-08-11 20:32:36',1300.00,900.00,1.00,1,'AMD ','RYZEN 3 3200G','Gris',34.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,7,1,'producto10.jpg','nuevo.jpg','nuevo.jpg','nuevo.jpg',0,1300.00,'','',0,0,1300.00,1300.00,0),(2,'L00002','LAPTOP HP Core i7 15.6\" 16Gb RAM GAMER',0,'2023-08-11 12:57:23',2500.00,1800.00,1.00,1,'HP','LAPTOP','PLATA',20.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,1,1,'producto2.jpg','nuevo.jpg','nuevo.jpg','nuevo.jpg',0,2500.00,'','',0,0,2500.00,2500.00,0),(3,'L00003','Monitor Samsung Curvo S35D980',0,'2023-08-11 13:16:33',920.00,700.00,1.00,1,'Sansung','S35D980','Negro',34.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,2,1,'producto3.jpg','nuevo.jpg','nuevo.jpg','nuevo.jpg',0,920.00,'','',0,0,920.00,920.00,0),(4,'L00004','Teclado Inalámbrico',0,'2023-08-11 13:19:09',420.00,300.00,1.00,1,'LOGITEC','G603','Negro',35.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,3,1,'producto4.jpg','nuevo.jpg','nuevo.jpg','nuevo.jpg',0,420.00,'','',0,0,420.00,420.00,0),(5,'L00005','Laptop Lennovo GX740',0,'2023-08-11 13:21:09',3400.00,2600.00,1.00,1,'Lennovo','GX740','Gris',35.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,1,1,'producto5.jpg','nuevo.jpg','nuevo.jpg','nuevo.jpg',0,3400.00,'','',0,0,3400.00,3400.00,0),(6,'L00006','Monitor Samsung S24D360',0,'2023-08-11 13:23:12',360.00,200.00,1.00,1,'Sansung','S24D360','Negro',35.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,2,1,'producto6.jpg','nuevo.jpg','nuevo.jpg','nuevo.jpg',0,360.00,'','',0,0,360.00,360.00,0),(7,'L00007','Mouse Gamer Corsair',0,'2023-08-11 13:29:25',180.00,100.00,1.00,1,'Corsair','ClX484','Negro',35.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,4,1,'producto7.jpg','nuevo.jpg','nuevo.jpg','nuevo.jpg',0,180.00,'','',0,0,180.00,180.00,0),(8,'L00008',' Parlantes Halion',0,'2023-08-11 13:36:20',120.00,120.00,1.00,1,'Halion','HF567','Negro',27.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,5,1,'producto8.jpg','nuevo.jpg','nuevo.jpg','nuevo.jpg',0,120.00,'','',0,0,120.00,120.00,0),(9,'L00009','Parlante Stay',0,'2023-08-11 13:37:53',100.00,100.00,1.00,1,'Stay','ST2550','Blue',35.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,5,1,'producto9.jpg','nuevo.jpg','nuevo.jpg','nuevo.jpg',0,100.00,'','',0,0,100.00,100.00,0),(12,'L00012','USB KINSTONG 32GB',0,'2023-08-25 18:23:16',120.00,80.00,1.00,1,'KINSTONG','GB32','gris',48.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,8,1,'producto10.jpg','nuevo.jpg','nuevo.jpg','nuevo.jpg',0,120.00,'','',0,0,120.00,120.00,0),(13,'L00015','Forza',0,'2023-08-25 20:55:01',110.00,80.00,1.00,1,'Forza','MX300','GRIS',33.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,9,1,'producto13.jpg','nuevo.jpg','nuevo.jpg','nuevo.jpg',0,110.00,'','',0,0,110.00,110.00,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id_proveedores` int(10) NOT NULL,
  `nom_pro` varchar(150) NOT NULL,
  `ruc_pro` varchar(15) NOT NULL,
  `dir_pro` varchar(150) NOT NULL,
  `tel_pro` text NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `cor_pro` varchar(100) NOT NULL,
  `contacto` varchar(150) NOT NULL,
  `forma_pago` varchar(150) NOT NULL,
  `cuenta_ban` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporte_saldos_x_almacen`
--

DROP TABLE IF EXISTS `reporte_saldos_x_almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporte_saldos_x_almacen` (
  `ISBN` char(20) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `Serie` varchar(50) DEFAULT NULL,
  `Editorial` varchar(50) DEFAULT NULL,
  `Precio lista` decimal(7,2) DEFAULT NULL,
  `Principal` decimal(5,2) DEFAULT NULL,
  `La Marina` decimal(5,2) DEFAULT NULL,
  `Comas` decimal(5,2) DEFAULT NULL,
  `San Lazaro` decimal(5,2) DEFAULT NULL,
  `E-Commerce` decimal(5,2) DEFAULT NULL,
  `Escardo` decimal(5,2) DEFAULT NULL,
  `Pte Piedra` decimal(5,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte_saldos_x_almacen`
--

LOCK TABLES `reporte_saldos_x_almacen` WRITE;
/*!40000 ALTER TABLE `reporte_saldos_x_almacen` DISABLE KEYS */;
/*!40000 ALTER TABLE `reporte_saldos_x_almacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumen_baja`
--

DROP TABLE IF EXISTS `resumen_baja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resumen_baja` (
  `resumen_baja_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `editado` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `resumen_fecha` date NOT NULL,
  `numero` tinyint(3) DEFAULT NULL,
  `ticket` varchar(15) DEFAULT NULL,
  `estado` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumen_baja`
--

LOCK TABLES `resumen_baja` WRITE;
/*!40000 ALTER TABLE `resumen_baja` DISABLE KEYS */;
/*!40000 ALTER TABLE `resumen_baja` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_resumenb_01` BEFORE INSERT ON `resumen_baja` FOR EACH ROW BEGIN
	DECLARE numerox INT;
	SET numerox = NULL;
	SELECT MAX(numero) INTO numerox FROM resumen_baja WHERE resumen_fecha = NEW.resumen_fecha;
	IF ISNULL(numerox) THEN
		SET NEW.numero = 1;
	ELSE
		SET NEW.numero = numerox+1;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_resumenb_03` AFTER UPDATE ON `resumen_baja` FOR EACH ROW BEGIN
	UPDATE facturas SET estado_fe = NEW.estado, tkt_baja=NEW.ticket WHERE resumen_baja_id = NEW.resumen_baja_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `resumen_diario`
--

DROP TABLE IF EXISTS `resumen_diario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resumen_diario` (
  `resumen_diario_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `editado` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `resumen_fecha` date NOT NULL,
  `numero` tinyint(3) DEFAULT NULL,
  `ticket` varchar(15) DEFAULT NULL,
  `estado` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumen_diario`
--

LOCK TABLES `resumen_diario` WRITE;
/*!40000 ALTER TABLE `resumen_diario` DISABLE KEYS */;
/*!40000 ALTER TABLE `resumen_diario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_resumend_01` BEFORE INSERT ON `resumen_diario` FOR EACH ROW BEGIN
	DECLARE numerox INT;
	SET numerox = NULL;
	SELECT MAX(numero) INTO numerox FROM resumen_diario WHERE date(fecha) = date(NEW.fecha);
	IF ISNULL(numerox) THEN
		SET NEW.numero = 1;
	ELSE
		SET NEW.numero = numerox+1;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_resumend_02` AFTER INSERT ON `resumen_diario` FOR EACH ROW BEGIN
	UPDATE facturas SET resumen_diario_id = NEW.resumen_diario_id WHERE 
	DATE(fecha_factura) = NEW.resumen_fecha AND 
	estado_fe = 1 AND
	facturas.activo = 1 AND 
	facturas.estado_factura IN ( 1) AND 
	facturas.ven_com = 1	;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_resumend_03` AFTER UPDATE ON `resumen_diario` FOR EACH ROW BEGIN
	UPDATE facturas SET facturas.estado_fe = NEW.estado, facturas.tkt_envio=NEW.ticket WHERE facturas.resumen_diario_id = NEW.resumen_diario_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ruc`
--

DROP TABLE IF EXISTS `ruc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruc` (
  `id` int(11) NOT NULL,
  `ruc` text NOT NULL,
  `nombre` text NOT NULL,
  `direccion` text NOT NULL,
  `departamento` text NOT NULL,
  `provincia` text NOT NULL,
  `distrito` text NOT NULL,
  `telefono` text NOT NULL,
  `email` text NOT NULL,
  `web` text NOT NULL,
  `rubro` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruc`
--

LOCK TABLES `ruc` WRITE;
/*!40000 ALTER TABLE `ruc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ruc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio` (
  `id_servicio` int(10) NOT NULL,
  `id_cliente` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `doc_servicio` varchar(30) NOT NULL,
  `tienda` int(2) NOT NULL,
  `nom_ser` varchar(100) NOT NULL,
  `tipo` int(2) NOT NULL,
  `pre_ser` decimal(5,2) NOT NULL,
  `ade_ser` decimal(5,2) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `des_ser` text NOT NULL,
  `car1` varchar(200) NOT NULL,
  `car2` varchar(200) NOT NULL,
  `car3` varchar(200) NOT NULL,
  `car4` varchar(200) NOT NULL,
  `car5` varchar(200) NOT NULL,
  `car6` varchar(200) NOT NULL,
  `com_ser` text NOT NULL,
  `ter_ser` int(2) NOT NULL,
  `cancelado` int(2) NOT NULL,
  `telefono1` varchar(100) NOT NULL,
  `guia` varchar(100) NOT NULL,
  `tip_doc` int(2) NOT NULL,
  `activo` int(2) NOT NULL,
  `detalle` int(10) NOT NULL,
  `fecha_emision` datetime NOT NULL,
  `fecha_reparado` datetime NOT NULL,
  `saliente` datetime NOT NULL,
  `desechado` datetime NOT NULL,
  `aceptar_guia` int(2) NOT NULL,
  `reparado` int(2) NOT NULL,
  `entregado` int(10) NOT NULL,
  `id_reparado` int(10) NOT NULL,
  `id_entregado` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_tipo`
--

DROP TABLE IF EXISTS `sub_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_tipo` (
  `id_sub_tipo` int(2) NOT NULL,
  `id_tipo` int(2) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `sub_tipo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_tipo`
--

LOCK TABLES `sub_tipo` WRITE;
/*!40000 ALTER TABLE `sub_tipo` DISABLE KEYS */;
INSERT INTO `sub_tipo` VALUES (1,1,'Laptop','Marca'),(2,1,'Laptop','Modelo'),(3,1,'Laptop','Nro Serie'),(4,1,'Laptop','Procesador'),(5,1,'Laptop','Memoria Ram'),(6,1,'Laptop','Disco Duro'),(7,2,'Computadora','Marca'),(8,2,'Computadora','Modelo'),(9,2,'Computadora','Placa'),(10,2,'Computadora','Procesador'),(11,2,'Computadora','Memoria Ram'),(12,2,'Computadora','Disco Duro'),(13,3,'Impresora','Tipo'),(14,3,'Impresora','Marca'),(15,3,'Impresora','Modelo'),(16,3,'Impresora','Nro Serie'),(17,4,'Monitor','Marca'),(18,4,'Monitor','Modelo'),(19,4,'Monitor','Nro Serie'),(20,4,'Monitor','Tamaño de Pantalla');
/*!40000 ALTER TABLE `sub_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursal` (
  `id_sucursal` int(10) NOT NULL,
  `tienda` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ruc` varchar(20) NOT NULL,
  `ubigeo` varchar(6) DEFAULT NULL,
  `direccion` text NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `local` varchar(50) DEFAULT NULL,
  `urbanizacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,1,'INFOCENTER E.I.R.L.','20606892854','150136','JR.PARURO 745 CERCDO - LIMA','servicioalcliente@infocenter.com.pe','999 918 777\r\n ','sucursal1.jpg','Principal',NULL),(2,2,'INFOCENTER E.I.R.L.','20606892878','150121','AV. WILSON 1824 LIMA CERCADO','servicioalcliente@infocenter.com.pe','999 918 456','sucursal2.jpg','Ferias',NULL),(0,3,'Infocenter','2015678091',NULL,'jr. calendular 7668','servicioalcliente@infocenter.com','935681036','logo.jpg',NULL,NULL),(0,4,'Vitarte','2015678091',NULL,'jr. anemona7668','servicioalcliente@infocenter.com','967123567','logo.jpg',NULL,NULL),(0,5,'Comas','2015678091',NULL,'jr. calendular 7668','servicioalcliente@infocenter.com','967123567','logo.jpg',NULL,NULL);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo` (
  `id_tipo` int(2) NOT NULL,
  `tipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,'Laptops'),(2,'Computadoras'),(3,'Impresoras'),(4,'Monitores');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp`
--

DROP TABLE IF EXISTS `tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` varchar(100) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) NOT NULL,
  `tienda` int(2) NOT NULL,
  `dscto` decimal(19,2) NOT NULL DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp`
--

LOCK TABLES `tmp` WRITE;
/*!40000 ALTER TABLE `tmp` DISABLE KEYS */;
INSERT INTO `tmp` VALUES (0,'10',1,1200.00,'p2k66gl9ndu5nvjcch493urros',1,0.00),(0,'9',1,100.00,'p2k66gl9ndu5nvjcch493urros',1,0.00);
/*!40000 ALTER TABLE `tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubigeo`
--

DROP TABLE IF EXISTS `ubigeo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubigeo` (
  `ubigeo_id` varchar(6) NOT NULL,
  `lugar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubigeo`
--

LOCK TABLES `ubigeo` WRITE;
/*!40000 ALTER TABLE `ubigeo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ubigeo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubigeo_dep`
--

DROP TABLE IF EXISTS `ubigeo_dep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubigeo_dep` (
  `ubigeo_dep_id` int(4) NOT NULL,
  `codigo` varchar(2) DEFAULT NULL,
  `ubigeo_dep` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubigeo_dep`
--

LOCK TABLES `ubigeo_dep` WRITE;
/*!40000 ALTER TABLE `ubigeo_dep` DISABLE KEYS */;
INSERT INTO `ubigeo_dep` VALUES (1,'01','Amazonas'),(2,'02','Áncash'),(3,'03','Apurímac'),(4,'04','Arequipa'),(5,'05','Ayacucho'),(6,'06','Cajamarca'),(7,'07','Callao'),(8,'08','Cusco'),(9,'09','Huancavelica'),(10,'10','Huánuco'),(11,'11','Ica'),(12,'12','Junín'),(13,'13','La Libertad'),(14,'14','Lambayeque'),(15,'15','Lima'),(16,'16','Loreto'),(17,'17','Madre de Dios'),(18,'18','Moquegua'),(19,'19','Pasco'),(20,'20','Piura'),(21,'21','Puno'),(22,'22','San Martín'),(23,'23','Tacna'),(24,'24','Tumbes'),(25,'25','Ucayali');
/*!40000 ALTER TABLE `ubigeo_dep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubigeo_dist`
--

DROP TABLE IF EXISTS `ubigeo_dist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubigeo_dist` (
  `ubigeo_dist_id` int(4) NOT NULL,
  `ubigeo_prov_id` int(4) DEFAULT NULL,
  `codigo` varchar(2) DEFAULT NULL,
  `ubigeo_dist` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubigeo_dist`
--

LOCK TABLES `ubigeo_dist` WRITE;
/*!40000 ALTER TABLE `ubigeo_dist` DISABLE KEYS */;
INSERT INTO `ubigeo_dist` VALUES (1,1,'01','Chachapoyas'),(2,1,'02','Asunción'),(3,1,'03','Balsas'),(4,1,'04','Cheto'),(5,1,'05','Chiliquin'),(6,1,'06','Chuquibamba'),(7,1,'07','Granada'),(8,1,'08','Huancas'),(9,1,'09','La Jalca'),(10,1,'10','Leimebamba'),(11,1,'11','Levanto'),(12,1,'12','Magdalena'),(13,1,'13','Mariscal Castilla'),(14,1,'14','Molinopampa'),(15,1,'15','Montevideo'),(16,1,'16','Olleros'),(17,1,'17','Quinjalca'),(18,1,'18','San Francisco de Daguas'),(19,1,'19','San Isidro de Maino'),(20,1,'20','Soloco'),(21,1,'21','Sonche'),(22,2,'01','Bagua'),(23,2,'02','Aramango'),(24,2,'03','Copallin'),(25,2,'04','El Parco'),(26,2,'05','Imaza'),(27,2,'06','La Peca'),(28,3,'01','Jumbilla'),(29,3,'02','Chisquilla'),(30,3,'03','Churuja'),(31,3,'04','Corosha'),(32,3,'05','Cuispes'),(33,3,'06','Florida'),(34,3,'07','Jazan'),(35,3,'08','Recta'),(36,3,'09','San Carlos'),(37,3,'10','Shipasbamba'),(38,3,'11','Valera'),(39,3,'12','Yambrasbamba'),(40,4,'01','Nieva'),(41,4,'02','El Cenepa'),(42,4,'03','Río Santiago'),(43,5,'01','Lamud'),(44,5,'02','Camporredondo'),(45,5,'03','Cocabamba'),(46,5,'04','Colcamar'),(47,5,'05','Conila'),(48,5,'06','Inguilpata'),(49,5,'07','Longuita'),(50,5,'08','Lonya Chico'),(51,5,'09','Luya'),(52,5,'10','Luya Viejo'),(53,5,'11','María'),(54,5,'12','Ocalli'),(55,5,'13','Ocumal'),(56,5,'14','Pisuquia'),(57,5,'15','Providencia'),(58,5,'16','San Cristóbal'),(59,5,'17','San Francisco de Yeso'),(60,5,'18','San Jerónimo'),(61,5,'19','San Juan de Lopecancha'),(62,5,'20','Santa Catalina'),(63,5,'21','Santo Tomas'),(64,5,'22','Tingo'),(65,5,'23','Trita'),(66,6,'01','San Nicolás'),(67,6,'02','Chirimoto'),(68,6,'03','Cochamal'),(69,6,'04','Huambo'),(70,6,'05','Limabamba'),(71,6,'06','Longar'),(72,6,'07','Mariscal Benavides'),(73,6,'08','Milpuc'),(74,6,'09','Omia'),(75,6,'10','Santa Rosa'),(76,6,'11','Totora'),(77,6,'12','Vista Alegre'),(78,7,'01','Bagua Grande'),(79,7,'02','Cajaruro'),(80,7,'03','Cumba'),(81,7,'04','El Milagro'),(82,7,'05','Jamalca'),(83,7,'06','Lonya Grande'),(84,7,'07','Yamon'),(85,8,'01','Huaraz'),(86,8,'02','Cochabamba'),(87,8,'03','Colcabamba'),(88,8,'04','Huanchay'),(89,8,'05','Independencia'),(90,8,'06','Jangas'),(91,8,'07','La Libertad'),(92,8,'08','Olleros'),(93,8,'09','Pampas Grande'),(94,8,'10','Pariacoto'),(95,8,'11','Pira'),(96,8,'12','Tarica'),(97,9,'01','Aija'),(98,9,'02','Coris'),(99,9,'03','Huacllan'),(100,9,'04','La Merced'),(101,9,'05','Succha'),(102,10,'01','Llamellin'),(103,10,'02','Aczo'),(104,10,'03','Chaccho'),(105,10,'04','Chingas'),(106,10,'05','Mirgas'),(107,10,'06','San Juan de Rontoy'),(108,11,'01','Chacas'),(109,11,'02','Acochaca'),(110,12,'01','Chiquian'),(111,12,'02','Abelardo Pardo Lezameta'),(112,12,'03','Antonio Raymondi'),(113,12,'04','Aquia'),(114,12,'05','Cajacay'),(115,12,'06','Canis'),(116,12,'07','Colquioc'),(117,12,'08','Huallanca'),(118,12,'09','Huasta'),(119,12,'10','Huayllacayan'),(120,12,'11','La Primavera'),(121,12,'12','Mangas'),(122,12,'13','Pacllon'),(123,12,'14','San Miguel de Corpanqui'),(124,12,'15','Ticllos'),(125,13,'01','Carhuaz'),(126,13,'02','Acopampa'),(127,13,'03','Amashca'),(128,13,'04','Anta'),(129,13,'05','Ataquero'),(130,13,'06','Marcara'),(131,13,'07','Pariahuanca'),(132,13,'08','San Miguel de Aco'),(133,13,'09','Shilla'),(134,13,'10','Tinco'),(135,13,'11','Yungar'),(136,14,'01','San Luis'),(137,14,'02','San Nicolás'),(138,14,'03','Yauya'),(139,15,'01','Casma'),(140,15,'02','Buena Vista Alta'),(141,15,'03','Comandante Noel'),(142,15,'04','Yautan'),(143,16,'01','Corongo'),(144,16,'02','Aco'),(145,16,'03','Bambas'),(146,16,'04','Cusca'),(147,16,'05','La Pampa'),(148,16,'06','Yanac'),(149,16,'07','Yupan'),(150,17,'01','Huari'),(151,17,'02','Anra'),(152,17,'03','Cajay'),(153,17,'04','Chavin de Huantar'),(154,17,'05','Huacachi'),(155,17,'06','Huacchis'),(156,17,'07','Huachis'),(157,17,'08','Huantar'),(158,17,'09','Masin'),(159,17,'10','Paucas'),(160,17,'11','Ponto'),(161,17,'12','Rahuapampa'),(162,17,'13','Rapayan'),(163,17,'14','San Marcos'),(164,17,'15','San Pedro de Chana'),(165,17,'16','Uco'),(166,18,'01','Huarmey'),(167,18,'02','Cochapeti'),(168,18,'03','Culebras'),(169,18,'04','Huayan'),(170,18,'05','Malvas'),(171,19,'01','Caraz'),(172,19,'02','Huallanca'),(173,19,'03','Huata'),(174,19,'04','Huaylas'),(175,19,'05','Mato'),(176,19,'06','Pamparomas'),(177,19,'07','Pueblo Libre'),(178,19,'08','Santa Cruz'),(179,19,'09','Santo Toribio'),(180,19,'10','Yuracmarca'),(181,20,'01','Piscobamba'),(182,20,'02','Casca'),(183,20,'03','Eleazar Guzmán Barron'),(184,20,'04','Fidel Olivas Escudero'),(185,20,'05','Llama'),(186,20,'06','Llumpa'),(187,20,'07','Lucma'),(188,20,'08','Musga'),(189,21,'01','Ocros'),(190,21,'02','Acas'),(191,21,'03','Cajamarquilla'),(192,21,'04','Carhuapampa'),(193,21,'05','Cochas'),(194,21,'06','Congas'),(195,21,'07','Llipa'),(196,21,'08','San Cristóbal de Rajan'),(197,21,'09','San Pedro'),(198,21,'10','Santiago de Chilcas'),(199,22,'01','Cabana'),(200,22,'02','Bolognesi'),(201,22,'03','Conchucos'),(202,22,'04','Huacaschuque'),(203,22,'05','Huandoval'),(204,22,'06','Lacabamba'),(205,22,'07','Llapo'),(206,22,'08','Pallasca'),(207,22,'09','Pampas'),(208,22,'10','Santa Rosa'),(209,22,'11','Tauca'),(210,23,'01','Pomabamba'),(211,23,'02','Huayllan'),(212,23,'03','Parobamba'),(213,23,'04','Quinuabamba'),(214,24,'01','Recuay'),(215,24,'02','Catac'),(216,24,'03','Cotaparaco'),(217,24,'04','Huayllapampa'),(218,24,'05','Llacllin'),(219,24,'06','Marca'),(220,24,'07','Pampas Chico'),(221,24,'08','Pararin'),(222,24,'09','Tapacocha'),(223,24,'10','Ticapampa'),(224,25,'01','Chimbote'),(225,25,'02','Cáceres del Perú'),(226,25,'03','Coishco'),(227,25,'04','Macate'),(228,25,'05','Moro'),(229,25,'06','Nepeña'),(230,25,'07','Samanco'),(231,25,'08','Santa'),(232,25,'09','Nuevo Chimbote'),(233,26,'01','Sihuas'),(234,26,'02','Acobamba'),(235,26,'03','Alfonso Ugarte'),(236,26,'04','Cashapampa'),(237,26,'05','Chingalpo'),(238,26,'06','Huayllabamba'),(239,26,'07','Quiches'),(240,26,'08','Ragash'),(241,26,'09','San Juan'),(242,26,'10','Sicsibamba'),(243,27,'01','Yungay'),(244,27,'02','Cascapara'),(245,27,'03','Mancos'),(246,27,'04','Matacoto'),(247,27,'05','Quillo'),(248,27,'06','Ranrahirca'),(249,27,'07','Shupluy'),(250,27,'08','Yanama'),(251,28,'01','Abancay'),(252,28,'02','Chacoche'),(253,28,'03','Circa'),(254,28,'04','Curahuasi'),(255,28,'05','Huanipaca'),(256,28,'06','Lambrama'),(257,28,'07','Pichirhua'),(258,28,'08','San Pedro de Cachora'),(259,28,'09','Tamburco'),(260,29,'01','Andahuaylas'),(261,29,'02','Andarapa'),(262,29,'03','Chiara'),(263,29,'04','Huancarama'),(264,29,'05','Huancaray'),(265,29,'06','Huayana'),(266,29,'07','Kishuara'),(267,29,'08','Pacobamba'),(268,29,'09','Pacucha'),(269,29,'10','Pampachiri'),(270,29,'11','Pomacocha'),(271,29,'12','San Antonio de Cachi'),(272,29,'13','San Jerónimo'),(273,29,'14','San Miguel de Chaccrampa'),(274,29,'15','Santa María de Chicmo'),(275,29,'16','Talavera'),(276,29,'17','Tumay Huaraca'),(277,29,'18','Turpo'),(278,29,'19','Kaquiabamba'),(279,29,'20','José María Arguedas'),(280,30,'01','Antabamba'),(281,30,'02','El Oro'),(282,30,'03','Huaquirca'),(283,30,'04','Juan Espinoza Medrano'),(284,30,'05','Oropesa'),(285,30,'06','Pachaconas'),(286,30,'07','Sabaino'),(287,31,'01','Chalhuanca'),(288,31,'02','Capaya'),(289,31,'03','Caraybamba'),(290,31,'04','Chapimarca'),(291,31,'05','Colcabamba'),(292,31,'06','Cotaruse'),(293,31,'07','Ihuayllo'),(294,31,'08','Justo Apu Sahuaraura'),(295,31,'09','Lucre'),(296,31,'10','Pocohuanca'),(297,31,'11','San Juan de Chacña'),(298,31,'12','Sañayca'),(299,31,'13','Soraya'),(300,31,'14','Tapairihua'),(301,31,'15','Tintay'),(302,31,'16','Toraya'),(303,31,'17','Yanaca'),(304,32,'01','Tambobamba'),(305,32,'02','Cotabambas'),(306,32,'03','Coyllurqui'),(307,32,'04','Haquira'),(308,32,'05','Mara'),(309,32,'06','Challhuahuacho'),(310,33,'01','Chincheros'),(311,33,'02','Anco_Huallo'),(312,33,'03','Cocharcas'),(313,33,'04','Huaccana'),(314,33,'05','Ocobamba'),(315,33,'06','Ongoy'),(316,33,'07','Uranmarca'),(317,33,'08','Ranracancha'),(318,33,'09','Rocchacc'),(319,33,'10','El Porvenir'),(320,33,'11','Los Chankas'),(321,34,'01','Chuquibambilla'),(322,34,'02','Curpahuasi'),(323,34,'03','Gamarra'),(324,34,'04','Huayllati'),(325,34,'05','Mamara'),(326,34,'06','Micaela Bastidas'),(327,34,'07','Pataypampa'),(328,34,'08','Progreso'),(329,34,'09','San Antonio'),(330,34,'10','Santa Rosa'),(331,34,'11','Turpay'),(332,34,'12','Vilcabamba'),(333,34,'13','Virundo'),(334,34,'14','Curasco'),(335,35,'01','Arequipa'),(336,35,'02','Alto Selva Alegre'),(337,35,'03','Cayma'),(338,35,'04','Cerro Colorado'),(339,35,'05','Characato'),(340,35,'06','Chiguata'),(341,35,'07','Jacobo Hunter'),(342,35,'08','La Joya'),(343,35,'09','Mariano Melgar'),(344,35,'10','Miraflores'),(345,35,'11','Mollebaya'),(346,35,'12','Paucarpata'),(347,35,'13','Pocsi'),(348,35,'14','Polobaya'),(349,35,'15','Quequeña'),(350,35,'16','Sabandia'),(351,35,'17','Sachaca'),(352,35,'18','San Juan de Siguas'),(353,35,'19','San Juan de Tarucani'),(354,35,'20','Santa Isabel de Siguas'),(355,35,'21','Santa Rita de Siguas'),(356,35,'22','Socabaya'),(357,35,'23','Tiabaya'),(358,35,'24','Uchumayo'),(359,35,'25','Vitor'),(360,35,'26','Yanahuara'),(361,35,'27','Yarabamba'),(362,35,'28','Yura'),(363,35,'29','José Luis Bustamante Y Rivero'),(364,36,'01','Camaná'),(365,36,'02','José María Quimper'),(366,36,'03','Mariano Nicolás Valcárcel'),(367,36,'04','Mariscal Cáceres'),(368,36,'05','Nicolás de Pierola'),(369,36,'06','Ocoña'),(370,36,'07','Quilca'),(371,36,'08','Samuel Pastor'),(372,37,'01','Caravelí'),(373,37,'02','Acarí'),(374,37,'03','Atico'),(375,37,'04','Atiquipa'),(376,37,'05','Bella Unión'),(377,37,'06','Cahuacho'),(378,37,'07','Chala'),(379,37,'08','Chaparra'),(380,37,'09','Huanuhuanu'),(381,37,'10','Jaqui'),(382,37,'11','Lomas'),(383,37,'12','Quicacha'),(384,37,'13','Yauca'),(385,38,'01','Aplao'),(386,38,'02','Andagua'),(387,38,'03','Ayo'),(388,38,'04','Chachas'),(389,38,'05','Chilcaymarca'),(390,38,'06','Choco'),(391,38,'07','Huancarqui'),(392,38,'08','Machaguay'),(393,38,'09','Orcopampa'),(394,38,'10','Pampacolca'),(395,38,'11','Tipan'),(396,38,'12','Uñon'),(397,38,'13','Uraca'),(398,38,'14','Viraco'),(399,39,'01','Chivay'),(400,39,'02','Achoma'),(401,39,'03','Cabanaconde'),(402,39,'04','Callalli'),(403,39,'05','Caylloma'),(404,39,'06','Coporaque'),(405,39,'07','Huambo'),(406,39,'08','Huanca'),(407,39,'09','Ichupampa'),(408,39,'10','Lari'),(409,39,'11','Lluta'),(410,39,'12','Maca'),(411,39,'13','Madrigal'),(412,39,'14','San Antonio de Chuca'),(413,39,'15','Sibayo'),(414,39,'16','Tapay'),(415,39,'17','Tisco'),(416,39,'18','Tuti'),(417,39,'19','Yanque'),(418,39,'20','Majes'),(419,40,'01','Chuquibamba'),(420,40,'02','Andaray'),(421,40,'03','Cayarani'),(422,40,'04','Chichas'),(423,40,'05','Iray'),(424,40,'06','Río Grande'),(425,40,'07','Salamanca'),(426,40,'08','Yanaquihua'),(427,41,'01','Mollendo'),(428,41,'02','Cocachacra'),(429,41,'03','Dean Valdivia'),(430,41,'04','Islay'),(431,41,'05','Mejia'),(432,41,'06','Punta de Bombón'),(433,42,'01','Cotahuasi'),(434,42,'02','Alca'),(435,42,'03','Charcana'),(436,42,'04','Huaynacotas'),(437,42,'05','Pampamarca'),(438,42,'06','Puyca'),(439,42,'07','Quechualla'),(440,42,'08','Sayla'),(441,42,'09','Tauria'),(442,42,'10','Tomepampa'),(443,42,'11','Toro'),(444,43,'01','Ayacucho'),(445,43,'02','Acocro'),(446,43,'03','Acos Vinchos'),(447,43,'04','Carmen Alto'),(448,43,'05','Chiara'),(449,43,'06','Ocros'),(450,43,'07','Pacaycasa'),(451,43,'08','Quinua'),(452,43,'09','San José de Ticllas'),(453,43,'10','San Juan Bautista'),(454,43,'11','Santiago de Pischa'),(455,43,'12','Socos'),(456,43,'13','Tambillo'),(457,43,'14','Vinchos'),(458,43,'15','Jesús Nazareno'),(459,43,'16','Andrés Avelino Cáceres Dorregaray'),(460,44,'01','Cangallo'),(461,44,'02','Chuschi'),(462,44,'03','Los Morochucos'),(463,44,'04','María Parado de Bellido'),(464,44,'05','Paras'),(465,44,'06','Totos'),(466,45,'01','Sancos'),(467,45,'02','Carapo'),(468,45,'03','Sacsamarca'),(469,45,'04','Santiago de Lucanamarca'),(470,46,'01','Huanta'),(471,46,'02','Ayahuanco'),(472,46,'03','Huamanguilla'),(473,46,'04','Iguain'),(474,46,'05','Luricocha'),(475,46,'06','Santillana'),(476,46,'07','Sivia'),(477,46,'08','Llochegua'),(478,46,'09','Canayre'),(479,46,'10','Uchuraccay'),(480,46,'11','Pucacolpa'),(481,46,'12','Chaca'),(482,47,'01','San Miguel'),(483,47,'02','Anco'),(484,47,'03','Ayna'),(485,47,'04','Chilcas'),(486,47,'05','Chungui'),(487,47,'06','Luis Carranza'),(488,47,'07','Santa Rosa'),(489,47,'08','Tambo'),(490,47,'09','Samugari'),(491,47,'10','Anchihuay'),(492,47,'11','Oronccoy'),(493,48,'01','Puquio'),(494,48,'02','Aucara'),(495,48,'03','Cabana'),(496,48,'04','Carmen Salcedo'),(497,48,'05','Chaviña'),(498,48,'06','Chipao'),(499,48,'07','Huac-Huas'),(500,48,'08','Laramate'),(501,48,'09','Leoncio Prado'),(502,48,'10','Llauta'),(503,48,'11','Lucanas'),(504,48,'12','Ocaña'),(505,48,'13','Otoca'),(506,48,'14','Saisa'),(507,48,'15','San Cristóbal'),(508,48,'16','San Juan'),(509,48,'17','San Pedro'),(510,48,'18','San Pedro de Palco'),(511,48,'19','Sancos'),(512,48,'20','Santa Ana de Huaycahuacho'),(513,48,'21','Santa Lucia'),(514,49,'01','Coracora'),(515,49,'02','Chumpi'),(516,49,'03','Coronel Castañeda'),(517,49,'04','Pacapausa'),(518,49,'05','Pullo'),(519,49,'06','Puyusca'),(520,49,'07','San Francisco de Ravacayco'),(521,49,'08','Upahuacho'),(522,50,'01','Pausa'),(523,50,'02','Colta'),(524,50,'03','Corculla'),(525,50,'04','Lampa'),(526,50,'05','Marcabamba'),(527,50,'06','Oyolo'),(528,50,'07','Pararca'),(529,50,'08','San Javier de Alpabamba'),(530,50,'09','San José de Ushua'),(531,50,'10','Sara Sara'),(532,51,'01','Querobamba'),(533,51,'02','Belén'),(534,51,'03','Chalcos'),(535,51,'04','Chilcayoc'),(536,51,'05','Huacaña'),(537,51,'06','Morcolla'),(538,51,'07','Paico'),(539,51,'08','San Pedro de Larcay'),(540,51,'09','San Salvador de Quije'),(541,51,'10','Santiago de Paucaray'),(542,51,'11','Soras'),(543,52,'01','Huancapi'),(544,52,'02','Alcamenca'),(545,52,'03','Apongo'),(546,52,'04','Asquipata'),(547,52,'05','Canaria'),(548,52,'06','Cayara'),(549,52,'07','Colca'),(550,52,'08','Huamanquiquia'),(551,52,'09','Huancaraylla'),(552,52,'10','Hualla'),(553,52,'11','Sarhua'),(554,52,'12','Vilcanchos'),(555,53,'01','Vilcas Huaman'),(556,53,'02','Accomarca'),(557,53,'03','Carhuanca'),(558,53,'04','Concepción'),(559,53,'05','Huambalpa'),(560,53,'06','Independencia'),(561,53,'07','Saurama'),(562,53,'08','Vischongo'),(563,54,'01','Cajamarca'),(564,54,'02','Asunción'),(565,54,'03','Chetilla'),(566,54,'04','Cospan'),(567,54,'05','Encañada'),(568,54,'06','Jesús'),(569,54,'07','Llacanora'),(570,54,'08','Los Baños del Inca'),(571,54,'09','Magdalena'),(572,54,'10','Matara'),(573,54,'11','Namora'),(574,54,'12','San Juan'),(575,55,'01','Cajabamba'),(576,55,'02','Cachachi'),(577,55,'03','Condebamba'),(578,55,'04','Sitacocha'),(579,56,'01','Celendín'),(580,56,'02','Chumuch'),(581,56,'03','Cortegana'),(582,56,'04','Huasmin'),(583,56,'05','Jorge Chávez'),(584,56,'06','José Gálvez'),(585,56,'07','Miguel Iglesias'),(586,56,'08','Oxamarca'),(587,56,'09','Sorochuco'),(588,56,'10','Sucre'),(589,56,'11','Utco'),(590,56,'12','La Libertad de Pallan'),(591,57,'01','Chota'),(592,57,'02','Anguia'),(593,57,'03','Chadin'),(594,57,'04','Chiguirip'),(595,57,'05','Chimban'),(596,57,'06','Choropampa'),(597,57,'07','Cochabamba'),(598,57,'08','Conchan'),(599,57,'09','Huambos'),(600,57,'10','Lajas'),(601,57,'11','Llama'),(602,57,'12','Miracosta'),(603,57,'13','Paccha'),(604,57,'14','Pion'),(605,57,'15','Querocoto'),(606,57,'16','San Juan de Licupis'),(607,57,'17','Tacabamba'),(608,57,'18','Tocmoche'),(609,57,'19','Chalamarca'),(610,58,'01','Contumaza'),(611,58,'02','Chilete'),(612,58,'03','Cupisnique'),(613,58,'04','Guzmango'),(614,58,'05','San Benito'),(615,58,'06','Santa Cruz de Toledo'),(616,58,'07','Tantarica'),(617,58,'08','Yonan'),(618,59,'01','Cutervo'),(619,59,'02','Callayuc'),(620,59,'03','Choros'),(621,59,'04','Cujillo'),(622,59,'05','La Ramada'),(623,59,'06','Pimpingos'),(624,59,'07','Querocotillo'),(625,59,'08','San Andrés de Cutervo'),(626,59,'09','San Juan de Cutervo'),(627,59,'10','San Luis de Lucma'),(628,59,'11','Santa Cruz'),(629,59,'12','Santo Domingo de la Capilla'),(630,59,'13','Santo Tomas'),(631,59,'14','Socota'),(632,59,'15','Toribio Casanova'),(633,60,'01','Bambamarca'),(634,60,'02','Chugur'),(635,60,'03','Hualgayoc'),(636,61,'01','Jaén'),(637,61,'02','Bellavista'),(638,61,'03','Chontali'),(639,61,'04','Colasay'),(640,61,'05','Huabal'),(641,61,'06','Las Pirias'),(642,61,'07','Pomahuaca'),(643,61,'08','Pucara'),(644,61,'09','Sallique'),(645,61,'10','San Felipe'),(646,61,'11','San José del Alto'),(647,61,'12','Santa Rosa'),(648,62,'01','San Ignacio'),(649,62,'02','Chirinos'),(650,62,'03','Huarango'),(651,62,'04','La Coipa'),(652,62,'05','Namballe'),(653,62,'06','San José de Lourdes'),(654,62,'07','Tabaconas'),(655,63,'01','Pedro Gálvez'),(656,63,'02','Chancay'),(657,63,'03','Eduardo Villanueva'),(658,63,'04','Gregorio Pita'),(659,63,'05','Ichocan'),(660,63,'06','José Manuel Quiroz'),(661,63,'07','José Sabogal'),(662,64,'01','San Miguel'),(663,64,'02','Bolívar'),(664,64,'03','Calquis'),(665,64,'04','Catilluc'),(666,64,'05','El Prado'),(667,64,'06','La Florida'),(668,64,'07','Llapa'),(669,64,'08','Nanchoc'),(670,64,'09','Niepos'),(671,64,'10','San Gregorio'),(672,64,'11','San Silvestre de Cochan'),(673,64,'12','Tongod'),(674,64,'13','Unión Agua Blanca'),(675,65,'01','San Pablo'),(676,65,'02','San Bernardino'),(677,65,'03','San Luis'),(678,65,'04','Tumbaden'),(679,66,'01','Santa Cruz'),(680,66,'02','Andabamba'),(681,66,'03','Catache'),(682,66,'04','Chancaybaños'),(683,66,'05','La Esperanza'),(684,66,'06','Ninabamba'),(685,66,'07','Pulan'),(686,66,'08','Saucepampa'),(687,66,'09','Sexi'),(688,66,'10','Uticyacu'),(689,66,'11','Yauyucan'),(690,67,'01','Callao'),(691,67,'02','Bellavista'),(692,67,'03','Carmen de la Legua Reynoso'),(693,67,'04','La Perla'),(694,67,'05','La Punta'),(695,67,'06','Ventanilla'),(696,67,'07','Mi Perú'),(697,68,'01','Cusco'),(698,68,'02','Ccorca'),(699,68,'03','Poroy'),(700,68,'04','San Jerónimo'),(701,68,'05','San Sebastian'),(702,68,'06','Santiago'),(703,68,'07','Saylla'),(704,68,'08','Wanchaq'),(705,69,'01','Acomayo'),(706,69,'02','Acopia'),(707,69,'03','Acos'),(708,69,'04','Mosoc Llacta'),(709,69,'05','Pomacanchi'),(710,69,'06','Rondocan'),(711,69,'07','Sangarara'),(712,70,'01','Anta'),(713,70,'02','Ancahuasi'),(714,70,'03','Cachimayo'),(715,70,'04','Chinchaypujio'),(716,70,'05','Huarocondo'),(717,70,'06','Limatambo'),(718,70,'07','Mollepata'),(719,70,'08','Pucyura'),(720,70,'09','Zurite'),(721,71,'01','Calca'),(722,71,'02','Coya'),(723,71,'03','Lamay'),(724,71,'04','Lares'),(725,71,'05','Pisac'),(726,71,'06','San Salvador'),(727,71,'07','Taray'),(728,71,'08','Yanatile'),(729,72,'01','Yanaoca'),(730,72,'02','Checca'),(731,72,'03','Kunturkanki'),(732,72,'04','Langui'),(733,72,'05','Layo'),(734,72,'06','Pampamarca'),(735,72,'07','Quehue'),(736,72,'08','Tupac Amaru'),(737,73,'01','Sicuani'),(738,73,'02','Checacupe'),(739,73,'03','Combapata'),(740,73,'04','Marangani'),(741,73,'05','Pitumarca'),(742,73,'06','San Pablo'),(743,73,'07','San Pedro'),(744,73,'08','Tinta'),(745,74,'01','Santo Tomas'),(746,74,'02','Capacmarca'),(747,74,'03','Chamaca'),(748,74,'04','Colquemarca'),(749,74,'05','Livitaca'),(750,74,'06','Llusco'),(751,74,'07','Quiñota'),(752,74,'08','Velille'),(753,75,'01','Espinar'),(754,75,'02','Condoroma'),(755,75,'03','Coporaque'),(756,75,'04','Ocoruro'),(757,75,'05','Pallpata'),(758,75,'06','Pichigua'),(759,75,'07','Suyckutambo'),(760,75,'08','Alto Pichigua'),(761,76,'01','Santa Ana'),(762,76,'02','Echarate'),(763,76,'03','Huayopata'),(764,76,'04','Maranura'),(765,76,'05','Ocobamba'),(766,76,'06','Quellouno'),(767,76,'07','Kimbiri'),(768,76,'08','Santa Teresa'),(769,76,'09','Vilcabamba'),(770,76,'10','Pichari'),(771,76,'11','Inkawasi'),(772,76,'12','Villa Virgen'),(773,76,'13','Villa Kintiarina'),(774,76,'14','Megantoni'),(775,77,'01','Paruro'),(776,77,'02','Accha'),(777,77,'03','Ccapi'),(778,77,'04','Colcha'),(779,77,'05','Huanoquite'),(780,77,'06','Omacha'),(781,77,'07','Paccaritambo'),(782,77,'08','Pillpinto'),(783,77,'09','Yaurisque'),(784,78,'01','Paucartambo'),(785,78,'02','Caicay'),(786,78,'03','Challabamba'),(787,78,'04','Colquepata'),(788,78,'05','Huancarani'),(789,78,'06','Kosñipata'),(790,79,'01','Urcos'),(791,79,'02','Andahuaylillas'),(792,79,'03','Camanti'),(793,79,'04','Ccarhuayo'),(794,79,'05','Ccatca'),(795,79,'06','Cusipata'),(796,79,'07','Huaro'),(797,79,'08','Lucre'),(798,79,'09','Marcapata'),(799,79,'10','Ocongate'),(800,79,'11','Oropesa'),(801,79,'12','Quiquijana'),(802,80,'01','Urubamba'),(803,80,'02','Chinchero'),(804,80,'03','Huayllabamba'),(805,80,'04','Machupicchu'),(806,80,'05','Maras'),(807,80,'06','Ollantaytambo'),(808,80,'07','Yucay'),(809,81,'01','Huancavelica'),(810,81,'02','Acobambilla'),(811,81,'03','Acoria'),(812,81,'04','Conayca'),(813,81,'05','Cuenca'),(814,81,'06','Huachocolpa'),(815,81,'07','Huayllahuara'),(816,81,'08','Izcuchaca'),(817,81,'09','Laria'),(818,81,'10','Manta'),(819,81,'11','Mariscal Cáceres'),(820,81,'12','Moya'),(821,81,'13','Nuevo Occoro'),(822,81,'14','Palca'),(823,81,'15','Pilchaca'),(824,81,'16','Vilca'),(825,81,'17','Yauli'),(826,81,'18','Ascensión'),(827,81,'19','Huando'),(828,82,'01','Acobamba'),(829,82,'02','Andabamba'),(830,82,'03','Anta'),(831,82,'04','Caja'),(832,82,'05','Marcas'),(833,82,'06','Paucara'),(834,82,'07','Pomacocha'),(835,82,'08','Rosario'),(836,83,'01','Lircay'),(837,83,'02','Anchonga'),(838,83,'03','Callanmarca'),(839,83,'04','Ccochaccasa'),(840,83,'05','Chincho'),(841,83,'06','Congalla'),(842,83,'07','Huanca-Huanca'),(843,83,'08','Huayllay Grande'),(844,83,'09','Julcamarca'),(845,83,'10','San Antonio de Antaparco'),(846,83,'11','Santo Tomas de Pata'),(847,83,'12','Secclla'),(848,84,'01','Castrovirreyna'),(849,84,'02','Arma'),(850,84,'03','Aurahua'),(851,84,'04','Capillas'),(852,84,'05','Chupamarca'),(853,84,'06','Cocas'),(854,84,'07','Huachos'),(855,84,'08','Huamatambo'),(856,84,'09','Mollepampa'),(857,84,'10','San Juan'),(858,84,'11','Santa Ana'),(859,84,'12','Tantara'),(860,84,'13','Ticrapo'),(861,85,'01','Churcampa'),(862,85,'02','Anco'),(863,85,'03','Chinchihuasi'),(864,85,'04','El Carmen'),(865,85,'05','La Merced'),(866,85,'06','Locroja'),(867,85,'07','Paucarbamba'),(868,85,'08','San Miguel de Mayocc'),(869,85,'09','San Pedro de Coris'),(870,85,'10','Pachamarca'),(871,85,'11','Cosme'),(872,86,'01','Huaytara'),(873,86,'02','Ayavi'),(874,86,'03','Córdova'),(875,86,'04','Huayacundo Arma'),(876,86,'05','Laramarca'),(877,86,'06','Ocoyo'),(878,86,'07','Pilpichaca'),(879,86,'08','Querco'),(880,86,'09','Quito-Arma'),(881,86,'10','San Antonio de Cusicancha'),(882,86,'11','San Francisco de Sangayaico'),(883,86,'12','San Isidro'),(884,86,'13','Santiago de Chocorvos'),(885,86,'14','Santiago de Quirahuara'),(886,86,'15','Santo Domingo de Capillas'),(887,86,'16','Tambo'),(888,87,'01','Pampas'),(889,87,'02','Acostambo'),(890,87,'03','Acraquia'),(891,87,'04','Ahuaycha'),(892,87,'05','Colcabamba'),(893,87,'06','Daniel Hernández'),(894,87,'07','Huachocolpa'),(895,87,'09','Huaribamba'),(896,87,'10','Ñahuimpuquio'),(897,87,'11','Pazos'),(898,87,'13','Quishuar'),(899,87,'14','Salcabamba'),(900,87,'15','Salcahuasi'),(901,87,'16','San Marcos de Rocchac'),(902,87,'17','Surcubamba'),(903,87,'18','Tintay Puncu'),(904,87,'19','Quichuas'),(905,87,'20','Andaymarca'),(906,87,'21','Roble'),(907,87,'22','Pichos'),(908,87,'23','Santiago de Tucuma'),(909,88,'01','Huanuco'),(910,88,'02','Amarilis'),(911,88,'03','Chinchao'),(912,88,'04','Churubamba'),(913,88,'05','Margos'),(914,88,'06','Quisqui (Kichki)'),(915,88,'07','San Francisco de Cayran'),(916,88,'08','San Pedro de Chaulan'),(917,88,'09','Santa María del Valle'),(918,88,'10','Yarumayo'),(919,88,'11','Pillco Marca'),(920,88,'12','Yacus'),(921,88,'13','San Pablo de Pillao'),(922,89,'01','Ambo'),(923,89,'02','Cayna'),(924,89,'03','Colpas'),(925,89,'04','Conchamarca'),(926,89,'05','Huacar'),(927,89,'06','San Francisco'),(928,89,'07','San Rafael'),(929,89,'08','Tomay Kichwa'),(930,90,'01','La Unión'),(931,90,'07','Chuquis'),(932,90,'11','Marías'),(933,90,'13','Pachas'),(934,90,'16','Quivilla'),(935,90,'17','Ripan'),(936,90,'21','Shunqui'),(937,90,'22','Sillapata'),(938,90,'23','Yanas'),(939,91,'01','Huacaybamba'),(940,91,'02','Canchabamba'),(941,91,'03','Cochabamba'),(942,91,'04','Pinra'),(943,92,'01','Llata'),(944,92,'02','Arancay'),(945,92,'03','Chavín de Pariarca'),(946,92,'04','Jacas Grande'),(947,92,'05','Jircan'),(948,92,'06','Miraflores'),(949,92,'07','Monzón'),(950,92,'08','Punchao'),(951,92,'09','Puños'),(952,92,'10','Singa'),(953,92,'11','Tantamayo'),(954,93,'01','Rupa-Rupa'),(955,93,'02','Daniel Alomía Robles'),(956,93,'03','Hermílio Valdizan'),(957,93,'04','José Crespo y Castillo'),(958,93,'05','Luyando'),(959,93,'06','Mariano Damaso Beraun'),(960,93,'07','Pucayacu'),(961,93,'08','Castillo Grande'),(962,93,'09','Pueblo Nuevo'),(963,93,'10','Santo Domingo de Anda'),(964,94,'01','Huacrachuco'),(965,94,'02','Cholon'),(966,94,'03','San Buenaventura'),(967,94,'04','La Morada'),(968,94,'05','Santa Rosa de Alto Yanajanca'),(969,95,'01','Panao'),(970,95,'02','Chaglla'),(971,95,'03','Molino'),(972,95,'04','Umari'),(973,96,'01','Puerto Inca'),(974,96,'02','Codo del Pozuzo'),(975,96,'03','Honoria'),(976,96,'04','Tournavista'),(977,96,'05','Yuyapichis'),(978,97,'01','Jesús'),(979,97,'02','Baños'),(980,97,'03','Jivia'),(981,97,'04','Queropalca'),(982,97,'05','Rondos'),(983,97,'06','San Francisco de Asís'),(984,97,'07','San Miguel de Cauri'),(985,98,'01','Chavinillo'),(986,98,'02','Cahuac'),(987,98,'03','Chacabamba'),(988,98,'04','Aparicio Pomares'),(989,98,'05','Jacas Chico'),(990,98,'06','Obas'),(991,98,'07','Pampamarca'),(992,98,'08','Choras'),(993,99,'01','Ica'),(994,99,'02','La Tinguiña'),(995,99,'03','Los Aquijes'),(996,99,'04','Ocucaje'),(997,99,'05','Pachacutec'),(998,99,'06','Parcona'),(999,99,'07','Pueblo Nuevo'),(1000,99,'08','Salas'),(1001,99,'09','San José de Los Molinos'),(1002,99,'10','San Juan Bautista'),(1003,99,'11','Santiago'),(1004,99,'12','Subtanjalla'),(1005,99,'13','Tate'),(1006,99,'14','Yauca del Rosario'),(1007,100,'01','Chincha Alta'),(1008,100,'02','Alto Laran'),(1009,100,'03','Chavin'),(1010,100,'04','Chincha Baja'),(1011,100,'05','El Carmen'),(1012,100,'06','Grocio Prado'),(1013,100,'07','Pueblo Nuevo'),(1014,100,'08','San Juan de Yanac'),(1015,100,'09','San Pedro de Huacarpana'),(1016,100,'10','Sunampe'),(1017,100,'11','Tambo de Mora'),(1018,101,'01','Nasca'),(1019,101,'02','Changuillo'),(1020,101,'03','El Ingenio'),(1021,101,'04','Marcona'),(1022,101,'05','Vista Alegre'),(1023,102,'01','Palpa'),(1024,102,'02','Llipata'),(1025,102,'03','Río Grande'),(1026,102,'04','Santa Cruz'),(1027,102,'05','Tibillo'),(1028,103,'01','Pisco'),(1029,103,'02','Huancano'),(1030,103,'03','Humay'),(1031,103,'04','Independencia'),(1032,103,'05','Paracas'),(1033,103,'06','San Andrés'),(1034,103,'07','San Clemente'),(1035,103,'08','Tupac Amaru Inca'),(1036,104,'01','Huancayo'),(1037,104,'04','Carhuacallanga'),(1038,104,'05','Chacapampa'),(1039,104,'06','Chicche'),(1040,104,'07','Chilca'),(1041,104,'08','Chongos Alto'),(1042,104,'11','Chupuro'),(1043,104,'12','Colca'),(1044,104,'13','Cullhuas'),(1045,104,'14','El Tambo'),(1046,104,'16','Huacrapuquio'),(1047,104,'17','Hualhuas'),(1048,104,'19','Huancan'),(1049,104,'20','Huasicancha'),(1050,104,'21','Huayucachi'),(1051,104,'22','Ingenio'),(1052,104,'24','Pariahuanca'),(1053,104,'25','Pilcomayo'),(1054,104,'26','Pucara'),(1055,104,'27','Quichuay'),(1056,104,'28','Quilcas'),(1057,104,'29','San Agustín'),(1058,104,'30','San Jerónimo de Tunan'),(1059,104,'32','Saño'),(1060,104,'33','Sapallanga'),(1061,104,'34','Sicaya'),(1062,104,'35','Santo Domingo de Acobamba'),(1063,104,'36','Viques'),(1064,105,'01','Concepción'),(1065,105,'02','Aco'),(1066,105,'03','Andamarca'),(1067,105,'04','Chambara'),(1068,105,'05','Cochas'),(1069,105,'06','Comas'),(1070,105,'07','Heroínas Toledo'),(1071,105,'08','Manzanares'),(1072,105,'09','Mariscal Castilla'),(1073,105,'10','Matahuasi'),(1074,105,'11','Mito'),(1075,105,'12','Nueve de Julio'),(1076,105,'13','Orcotuna'),(1077,105,'14','San José de Quero'),(1078,105,'15','Santa Rosa de Ocopa'),(1079,106,'01','Chanchamayo'),(1080,106,'02','Perene'),(1081,106,'03','Pichanaqui'),(1082,106,'04','San Luis de Shuaro'),(1083,106,'05','San Ramón'),(1084,106,'06','Vitoc'),(1085,107,'01','Jauja'),(1086,107,'02','Acolla'),(1087,107,'03','Apata'),(1088,107,'04','Ataura'),(1089,107,'05','Canchayllo'),(1090,107,'06','Curicaca'),(1091,107,'07','El Mantaro'),(1092,107,'08','Huamali'),(1093,107,'09','Huaripampa'),(1094,107,'10','Huertas'),(1095,107,'11','Janjaillo'),(1096,107,'12','Julcán'),(1097,107,'13','Leonor Ordóñez'),(1098,107,'14','Llocllapampa'),(1099,107,'15','Marco'),(1100,107,'16','Masma'),(1101,107,'17','Masma Chicche'),(1102,107,'18','Molinos'),(1103,107,'19','Monobamba'),(1104,107,'20','Muqui'),(1105,107,'21','Muquiyauyo'),(1106,107,'22','Paca'),(1107,107,'23','Paccha'),(1108,107,'24','Pancan'),(1109,107,'25','Parco'),(1110,107,'26','Pomacancha'),(1111,107,'27','Ricran'),(1112,107,'28','San Lorenzo'),(1113,107,'29','San Pedro de Chunan'),(1114,107,'30','Sausa'),(1115,107,'31','Sincos'),(1116,107,'32','Tunan Marca'),(1117,107,'33','Yauli'),(1118,107,'34','Yauyos'),(1119,108,'01','Junin'),(1120,108,'02','Carhuamayo'),(1121,108,'03','Ondores'),(1122,108,'04','Ulcumayo'),(1123,109,'01','Satipo'),(1124,109,'02','Coviriali'),(1125,109,'03','Llaylla'),(1126,109,'04','Mazamari'),(1127,109,'05','Pampa Hermosa'),(1128,109,'06','Pangoa'),(1129,109,'07','Río Negro'),(1130,109,'08','Río Tambo'),(1131,109,'09','Vizcatan del Ene'),(1132,110,'01','Tarma'),(1133,110,'02','Acobamba'),(1134,110,'03','Huaricolca'),(1135,110,'04','Huasahuasi'),(1136,110,'05','La Unión'),(1137,110,'06','Palca'),(1138,110,'07','Palcamayo'),(1139,110,'08','San Pedro de Cajas'),(1140,110,'09','Tapo'),(1141,111,'01','La Oroya'),(1142,111,'02','Chacapalpa'),(1143,111,'03','Huay-Huay'),(1144,111,'04','Marcapomacocha'),(1145,111,'05','Morococha'),(1146,111,'06','Paccha'),(1147,111,'07','Santa Bárbara de Carhuacayan'),(1148,111,'08','Santa Rosa de Sacco'),(1149,111,'09','Suitucancha'),(1150,111,'10','Yauli'),(1151,112,'01','Chupaca'),(1152,112,'02','Ahuac'),(1153,112,'03','Chongos Bajo'),(1154,112,'04','Huachac'),(1155,112,'05','Huamancaca Chico'),(1156,112,'06','San Juan de Iscos'),(1157,112,'07','San Juan de Jarpa'),(1158,112,'08','Tres de Diciembre'),(1159,112,'09','Yanacancha'),(1160,113,'01','Trujillo'),(1161,113,'02','El Porvenir'),(1162,113,'03','Florencia de Mora'),(1163,113,'04','Huanchaco'),(1164,113,'05','La Esperanza'),(1165,113,'06','Laredo'),(1166,113,'07','Moche'),(1167,113,'08','Poroto'),(1168,113,'09','Salaverry'),(1169,113,'10','Simbal'),(1170,113,'11','Victor Larco Herrera'),(1171,114,'01','Ascope'),(1172,114,'02','Chicama'),(1173,114,'03','Chocope'),(1174,114,'04','Magdalena de Cao'),(1175,114,'05','Paijan'),(1176,114,'06','Rázuri'),(1177,114,'07','Santiago de Cao'),(1178,114,'08','Casa Grande'),(1179,115,'01','Bolívar'),(1180,115,'02','Bambamarca'),(1181,115,'03','Condormarca'),(1182,115,'04','Longotea'),(1183,115,'05','Uchumarca'),(1184,115,'06','Ucuncha'),(1185,116,'01','Chepen'),(1186,116,'02','Pacanga'),(1187,116,'03','Pueblo Nuevo'),(1188,117,'01','Julcan'),(1189,117,'02','Calamarca'),(1190,117,'03','Carabamba'),(1191,117,'04','Huaso'),(1192,118,'01','Otuzco'),(1193,118,'02','Agallpampa'),(1194,118,'04','Charat'),(1195,118,'05','Huaranchal'),(1196,118,'06','La Cuesta'),(1197,118,'08','Mache'),(1198,118,'10','Paranday'),(1199,118,'11','Salpo'),(1200,118,'13','Sinsicap'),(1201,118,'14','Usquil'),(1202,119,'01','San Pedro de Lloc'),(1203,119,'02','Guadalupe'),(1204,119,'03','Jequetepeque'),(1205,119,'04','Pacasmayo'),(1206,119,'05','San José'),(1207,120,'01','Tayabamba'),(1208,120,'02','Buldibuyo'),(1209,120,'03','Chillia'),(1210,120,'04','Huancaspata'),(1211,120,'05','Huaylillas'),(1212,120,'06','Huayo'),(1213,120,'07','Ongon'),(1214,120,'08','Parcoy'),(1215,120,'09','Pataz'),(1216,120,'10','Pias'),(1217,120,'11','Santiago de Challas'),(1218,120,'12','Taurija'),(1219,120,'13','Urpay'),(1220,121,'01','Huamachuco'),(1221,121,'02','Chugay'),(1222,121,'03','Cochorco'),(1223,121,'04','Curgos'),(1224,121,'05','Marcabal'),(1225,121,'06','Sanagoran'),(1226,121,'07','Sarin'),(1227,121,'08','Sartimbamba'),(1228,122,'01','Santiago de Chuco'),(1229,122,'02','Angasmarca'),(1230,122,'03','Cachicadan'),(1231,122,'04','Mollebamba'),(1232,122,'05','Mollepata'),(1233,122,'06','Quiruvilca'),(1234,122,'07','Santa Cruz de Chuca'),(1235,122,'08','Sitabamba'),(1236,123,'01','Cascas'),(1237,123,'02','Lucma'),(1238,123,'03','Marmot'),(1239,123,'04','Sayapullo'),(1240,124,'01','Viru'),(1241,124,'02','Chao'),(1242,124,'03','Guadalupito'),(1243,125,'01','Chiclayo'),(1244,125,'02','Chongoyape'),(1245,125,'03','Eten'),(1246,125,'04','Eten Puerto'),(1247,125,'05','José Leonardo Ortiz'),(1248,125,'06','La Victoria'),(1249,125,'07','Lagunas'),(1250,125,'08','Monsefu'),(1251,125,'09','Nueva Arica'),(1252,125,'10','Oyotun'),(1253,125,'11','Picsi'),(1254,125,'12','Pimentel'),(1255,125,'13','Reque'),(1256,125,'14','Santa Rosa'),(1257,125,'15','Saña'),(1258,125,'16','Cayalti'),(1259,125,'17','Patapo'),(1260,125,'18','Pomalca'),(1261,125,'19','Pucala'),(1262,125,'20','Tuman'),(1263,126,'01','Ferreñafe'),(1264,126,'02','Cañaris'),(1265,126,'03','Incahuasi'),(1266,126,'04','Manuel Antonio Mesones Muro'),(1267,126,'05','Pitipo'),(1268,126,'06','Pueblo Nuevo'),(1269,127,'01','Lambayeque'),(1270,127,'02','Chochope'),(1271,127,'03','Illimo'),(1272,127,'04','Jayanca'),(1273,127,'05','Mochumi'),(1274,127,'06','Morrope'),(1275,127,'07','Motupe'),(1276,127,'08','Olmos'),(1277,127,'09','Pacora'),(1278,127,'10','Salas'),(1279,127,'11','San José'),(1280,127,'12','Tucume'),(1281,128,'01','Lima'),(1282,128,'02','Ancón'),(1283,128,'03','Ate'),(1284,128,'04','Barranco'),(1285,128,'05','Breña'),(1286,128,'06','Carabayllo'),(1287,128,'07','Chaclacayo'),(1288,128,'08','Chorrillos'),(1289,128,'09','Cieneguilla'),(1290,128,'10','Comas'),(1291,128,'11','El Agustino'),(1292,128,'12','Independencia'),(1293,128,'13','Jesús María'),(1294,128,'14','La Molina'),(1295,128,'15','La Victoria'),(1296,128,'16','Lince'),(1297,128,'17','Los Olivos'),(1298,128,'18','Lurigancho'),(1299,128,'19','Lurin'),(1300,128,'20','Magdalena del Mar'),(1301,128,'21','Pueblo Libre'),(1302,128,'22','Miraflores'),(1303,128,'23','Pachacamac'),(1304,128,'24','Pucusana'),(1305,128,'25','Puente Piedra'),(1306,128,'26','Punta Hermosa'),(1307,128,'27','Punta Negra'),(1308,128,'28','Rímac'),(1309,128,'29','San Bartolo'),(1310,128,'30','San Borja'),(1311,128,'31','San Isidro'),(1312,128,'32','San Juan de Lurigancho'),(1313,128,'33','San Juan de Miraflores'),(1314,128,'34','San Luis'),(1315,128,'35','San Martín de Porres'),(1316,128,'36','San Miguel'),(1317,128,'37','Santa Anita'),(1318,128,'38','Santa María del Mar'),(1319,128,'39','Santa Rosa'),(1320,128,'40','Santiago de Surco'),(1321,128,'41','Surquillo'),(1322,128,'42','Villa El Salvador'),(1323,128,'43','Villa María del Triunfo'),(1324,129,'01','Barranca'),(1325,129,'02','Paramonga'),(1326,129,'03','Pativilca'),(1327,129,'04','Supe'),(1328,129,'05','Supe Puerto'),(1329,130,'01','Cajatambo'),(1330,130,'02','Copa'),(1331,130,'03','Gorgor'),(1332,130,'04','Huancapon'),(1333,130,'05','Manas'),(1334,131,'01','Canta'),(1335,131,'02','Arahuay'),(1336,131,'03','Huamantanga'),(1337,131,'04','Huaros'),(1338,131,'05','Lachaqui'),(1339,131,'06','San Buenaventura'),(1340,131,'07','Santa Rosa de Quives'),(1341,132,'01','San Vicente de Cañete'),(1342,132,'02','Asia'),(1343,132,'03','Calango'),(1344,132,'04','Cerro Azul'),(1345,132,'05','Chilca'),(1346,132,'06','Coayllo'),(1347,132,'07','Imperial'),(1348,132,'08','Lunahuana'),(1349,132,'09','Mala'),(1350,132,'10','Nuevo Imperial'),(1351,132,'11','Pacaran'),(1352,132,'12','Quilmana'),(1353,132,'13','San Antonio'),(1354,132,'14','San Luis'),(1355,132,'15','Santa Cruz de Flores'),(1356,132,'16','Zúñiga'),(1357,133,'01','Huaral'),(1358,133,'02','Atavillos Alto'),(1359,133,'03','Atavillos Bajo'),(1360,133,'04','Aucallama'),(1361,133,'05','Chancay'),(1362,133,'06','Ihuari'),(1363,133,'07','Lampian'),(1364,133,'08','Pacaraos'),(1365,133,'09','San Miguel de Acos'),(1366,133,'10','Santa Cruz de Andamarca'),(1367,133,'11','Sumbilca'),(1368,133,'12','Veintisiete de Noviembre'),(1369,134,'01','Matucana'),(1370,134,'02','Antioquia'),(1371,134,'03','Callahuanca'),(1372,134,'04','Carampoma'),(1373,134,'05','Chicla'),(1374,134,'06','Cuenca'),(1375,134,'07','Huachupampa'),(1376,134,'08','Huanza'),(1377,134,'09','Huarochiri'),(1378,134,'10','Lahuaytambo'),(1379,134,'11','Langa'),(1380,134,'12','Laraos'),(1381,134,'13','Mariatana'),(1382,134,'14','Ricardo Palma'),(1383,134,'15','San Andrés de Tupicocha'),(1384,134,'16','San Antonio'),(1385,134,'17','San Bartolomé'),(1386,134,'18','San Damian'),(1387,134,'19','San Juan de Iris'),(1388,134,'20','San Juan de Tantaranche'),(1389,134,'21','San Lorenzo de Quinti'),(1390,134,'22','San Mateo'),(1391,134,'23','San Mateo de Otao'),(1392,134,'24','San Pedro de Casta'),(1393,134,'25','San Pedro de Huancayre'),(1394,134,'26','Sangallaya'),(1395,134,'27','Santa Cruz de Cocachacra'),(1396,134,'28','Santa Eulalia'),(1397,134,'29','Santiago de Anchucaya'),(1398,134,'30','Santiago de Tuna'),(1399,134,'31','Santo Domingo de Los Olleros'),(1400,134,'32','Surco'),(1401,135,'01','Huacho'),(1402,135,'02','Ambar'),(1403,135,'03','Caleta de Carquin'),(1404,135,'04','Checras'),(1405,135,'05','Hualmay'),(1406,135,'06','Huaura'),(1407,135,'07','Leoncio Prado'),(1408,135,'08','Paccho'),(1409,135,'09','Santa Leonor'),(1410,135,'10','Santa María'),(1411,135,'11','Sayan'),(1412,135,'12','Vegueta'),(1413,136,'01','Oyon'),(1414,136,'02','Andajes'),(1415,136,'03','Caujul'),(1416,136,'04','Cochamarca'),(1417,136,'05','Navan'),(1418,136,'06','Pachangara'),(1419,137,'01','Yauyos'),(1420,137,'02','Alis'),(1421,137,'03','Allauca'),(1422,137,'04','Ayaviri'),(1423,137,'05','Azángaro'),(1424,137,'06','Cacra'),(1425,137,'07','Carania'),(1426,137,'08','Catahuasi'),(1427,137,'09','Chocos'),(1428,137,'10','Cochas'),(1429,137,'11','Colonia'),(1430,137,'12','Hongos'),(1431,137,'13','Huampara'),(1432,137,'14','Huancaya'),(1433,137,'15','Huangascar'),(1434,137,'16','Huantan'),(1435,137,'17','Huañec'),(1436,137,'18','Laraos'),(1437,137,'19','Lincha'),(1438,137,'20','Madean'),(1439,137,'21','Miraflores'),(1440,137,'22','Omas'),(1441,137,'23','Putinza'),(1442,137,'24','Quinches'),(1443,137,'25','Quinocay'),(1444,137,'26','San Joaquín'),(1445,137,'27','San Pedro de Pilas'),(1446,137,'28','Tanta'),(1447,137,'29','Tauripampa'),(1448,137,'30','Tomas'),(1449,137,'31','Tupe'),(1450,137,'32','Viñac'),(1451,137,'33','Vitis'),(1452,138,'01','Iquitos'),(1453,138,'02','Alto Nanay'),(1454,138,'03','Fernando Lores'),(1455,138,'04','Indiana'),(1456,138,'05','Las Amazonas'),(1457,138,'06','Mazan'),(1458,138,'07','Napo'),(1459,138,'08','Punchana'),(1460,138,'10','Torres Causana'),(1461,138,'12','Belén'),(1462,138,'13','San Juan Bautista'),(1463,139,'01','Yurimaguas'),(1464,139,'02','Balsapuerto'),(1465,139,'05','Jeberos'),(1466,139,'06','Lagunas'),(1467,139,'10','Santa Cruz'),(1468,139,'11','Teniente Cesar López Rojas'),(1469,140,'01','Nauta'),(1470,140,'02','Parinari'),(1471,140,'03','Tigre'),(1472,140,'04','Trompeteros'),(1473,140,'05','Urarinas'),(1474,141,'01','Ramón Castilla'),(1475,141,'02','Pebas'),(1476,141,'03','Yavari'),(1477,141,'04','San Pablo'),(1478,142,'01','Requena'),(1479,142,'02','Alto Tapiche'),(1480,142,'03','Capelo'),(1481,142,'04','Emilio San Martín'),(1482,142,'05','Maquia'),(1483,142,'06','Puinahua'),(1484,142,'07','Saquena'),(1485,142,'08','Soplin'),(1486,142,'09','Tapiche'),(1487,142,'10','Jenaro Herrera'),(1488,142,'11','Yaquerana'),(1489,143,'01','Contamana'),(1490,143,'02','Inahuaya'),(1491,143,'03','Padre Márquez'),(1492,143,'04','Pampa Hermosa'),(1493,143,'05','Sarayacu'),(1494,143,'06','Vargas Guerra'),(1495,144,'01','Barranca'),(1496,144,'02','Cahuapanas'),(1497,144,'03','Manseriche'),(1498,144,'04','Morona'),(1499,144,'05','Pastaza'),(1500,144,'06','Andoas'),(1501,145,'01','Putumayo'),(1502,145,'02','Rosa Panduro'),(1503,145,'03','Teniente Manuel Clavero'),(1504,145,'04','Yaguas'),(1505,146,'01','Tambopata'),(1506,146,'02','Inambari'),(1507,146,'03','Las Piedras'),(1508,146,'04','Laberinto'),(1509,147,'01','Manu'),(1510,147,'02','Fitzcarrald'),(1511,147,'03','Madre de Dios'),(1512,147,'04','Huepetuhe'),(1513,148,'01','Iñapari'),(1514,148,'02','Iberia'),(1515,148,'03','Tahuamanu'),(1516,149,'01','Moquegua'),(1517,149,'02','Carumas'),(1518,149,'03','Cuchumbaya'),(1519,149,'04','Samegua'),(1520,149,'05','San Cristóbal'),(1521,149,'06','Torata'),(1522,150,'01','Omate'),(1523,150,'02','Chojata'),(1524,150,'03','Coalaque'),(1525,150,'04','Ichuña'),(1526,150,'05','La Capilla'),(1527,150,'06','Lloque'),(1528,150,'07','Matalaque'),(1529,150,'08','Puquina'),(1530,150,'09','Quinistaquillas'),(1531,150,'10','Ubinas'),(1532,150,'11','Yunga'),(1533,151,'01','Ilo'),(1534,151,'02','El Algarrobal'),(1535,151,'03','Pacocha'),(1536,152,'01','Chaupimarca'),(1537,152,'02','Huachon'),(1538,152,'03','Huariaca'),(1539,152,'04','Huayllay'),(1540,152,'05','Ninacaca'),(1541,152,'06','Pallanchacra'),(1542,152,'07','Paucartambo'),(1543,152,'08','San Francisco de Asís de Yarusyacan'),(1544,152,'09','Simon Bolívar'),(1545,152,'10','Ticlacayan'),(1546,152,'11','Tinyahuarco'),(1547,152,'12','Vicco'),(1548,152,'13','Yanacancha'),(1549,153,'01','Yanahuanca'),(1550,153,'02','Chacayan'),(1551,153,'03','Goyllarisquizga'),(1552,153,'04','Paucar'),(1553,153,'05','San Pedro de Pillao'),(1554,153,'06','Santa Ana de Tusi'),(1555,153,'07','Tapuc'),(1556,153,'08','Vilcabamba'),(1557,154,'01','Oxapampa'),(1558,154,'02','Chontabamba'),(1559,154,'03','Huancabamba'),(1560,154,'04','Palcazu'),(1561,154,'05','Pozuzo'),(1562,154,'06','Puerto Bermúdez'),(1563,154,'07','Villa Rica'),(1564,154,'08','Constitución'),(1565,155,'01','Piura'),(1566,155,'04','Castilla'),(1567,155,'05','Catacaos'),(1568,155,'07','Cura Mori'),(1569,155,'08','El Tallan'),(1570,155,'09','La Arena'),(1571,155,'10','La Unión'),(1572,155,'11','Las Lomas'),(1573,155,'14','Tambo Grande'),(1574,155,'15','Veintiseis de Octubre'),(1575,156,'01','Ayabaca'),(1576,156,'02','Frias'),(1577,156,'03','Jilili'),(1578,156,'04','Lagunas'),(1579,156,'05','Montero'),(1580,156,'06','Pacaipampa'),(1581,156,'07','Paimas'),(1582,156,'08','Sapillica'),(1583,156,'09','Sicchez'),(1584,156,'10','Suyo'),(1585,157,'01','Huancabamba'),(1586,157,'02','Canchaque'),(1587,157,'03','El Carmen de la Frontera'),(1588,157,'04','Huarmaca'),(1589,157,'05','Lalaquiz'),(1590,157,'06','San Miguel de El Faique'),(1591,157,'07','Sondor'),(1592,157,'08','Sondorillo'),(1593,158,'01','Chulucanas'),(1594,158,'02','Buenos Aires'),(1595,158,'03','Chalaco'),(1596,158,'04','La Matanza'),(1597,158,'05','Morropon'),(1598,158,'06','Salitral'),(1599,158,'07','San Juan de Bigote'),(1600,158,'08','Santa Catalina de Mossa'),(1601,158,'09','Santo Domingo'),(1602,158,'10','Yamango'),(1603,159,'01','Paita'),(1604,159,'02','Amotape'),(1605,159,'03','Arenal'),(1606,159,'04','Colan'),(1607,159,'05','La Huaca'),(1608,159,'06','Tamarindo'),(1609,159,'07','Vichayal'),(1610,160,'01','Sullana'),(1611,160,'02','Bellavista'),(1612,160,'03','Ignacio Escudero'),(1613,160,'04','Lancones'),(1614,160,'05','Marcavelica'),(1615,160,'06','Miguel Checa'),(1616,160,'07','Querecotillo'),(1617,160,'08','Salitral'),(1618,161,'01','Pariñas'),(1619,161,'02','El Alto'),(1620,161,'03','La Brea'),(1621,161,'04','Lobitos'),(1622,161,'05','Los Organos'),(1623,161,'06','Mancora'),(1624,162,'01','Sechura'),(1625,162,'02','Bellavista de la Unión'),(1626,162,'03','Bernal'),(1627,162,'04','Cristo Nos Valga'),(1628,162,'05','Vice'),(1629,162,'06','Rinconada Llicuar'),(1630,163,'01','Puno'),(1631,163,'02','Acora'),(1632,163,'03','Amantani'),(1633,163,'04','Atuncolla'),(1634,163,'05','Capachica'),(1635,163,'06','Chucuito'),(1636,163,'07','Coata'),(1637,163,'08','Huata'),(1638,163,'09','Mañazo'),(1639,163,'10','Paucarcolla'),(1640,163,'11','Pichacani'),(1641,163,'12','Plateria'),(1642,163,'13','San Antonio'),(1643,163,'14','Tiquillaca'),(1644,163,'15','Vilque'),(1645,164,'01','Azángaro'),(1646,164,'02','Achaya'),(1647,164,'03','Arapa'),(1648,164,'04','Asillo'),(1649,164,'05','Caminaca'),(1650,164,'06','Chupa'),(1651,164,'07','José Domingo Choquehuanca'),(1652,164,'08','Muñani'),(1653,164,'09','Potoni'),(1654,164,'10','Saman'),(1655,164,'11','San Anton'),(1656,164,'12','San José'),(1657,164,'13','San Juan de Salinas'),(1658,164,'14','Santiago de Pupuja'),(1659,164,'15','Tirapata'),(1660,165,'01','Macusani'),(1661,165,'02','Ajoyani'),(1662,165,'03','Ayapata'),(1663,165,'04','Coasa'),(1664,165,'05','Corani'),(1665,165,'06','Crucero'),(1666,165,'07','Ituata'),(1667,165,'08','Ollachea'),(1668,165,'09','San Gaban'),(1669,165,'10','Usicayos'),(1670,166,'01','Juli'),(1671,166,'02','Desaguadero'),(1672,166,'03','Huacullani'),(1673,166,'04','Kelluyo'),(1674,166,'05','Pisacoma'),(1675,166,'06','Pomata'),(1676,166,'07','Zepita'),(1677,167,'01','Ilave'),(1678,167,'02','Capazo'),(1679,167,'03','Pilcuyo'),(1680,167,'04','Santa Rosa'),(1681,167,'05','Conduriri'),(1682,168,'01','Huancane'),(1683,168,'02','Cojata'),(1684,168,'03','Huatasani'),(1685,168,'04','Inchupalla'),(1686,168,'05','Pusi'),(1687,168,'06','Rosaspata'),(1688,168,'07','Taraco'),(1689,168,'08','Vilque Chico'),(1690,169,'01','Lampa'),(1691,169,'02','Cabanilla'),(1692,169,'03','Calapuja'),(1693,169,'04','Nicasio'),(1694,169,'05','Ocuviri'),(1695,169,'06','Palca'),(1696,169,'07','Paratia'),(1697,169,'08','Pucara'),(1698,169,'09','Santa Lucia'),(1699,169,'10','Vilavila'),(1700,170,'01','Ayaviri'),(1701,170,'02','Antauta'),(1702,170,'03','Cupi'),(1703,170,'04','Llalli'),(1704,170,'05','Macari'),(1705,170,'06','Nuñoa'),(1706,170,'07','Orurillo'),(1707,170,'08','Santa Rosa'),(1708,170,'09','Umachiri'),(1709,171,'01','Moho'),(1710,171,'02','Conima'),(1711,171,'03','Huayrapata'),(1712,171,'04','Tilali'),(1713,172,'01','Putina'),(1714,172,'02','Ananea'),(1715,172,'03','Pedro Vilca Apaza'),(1716,172,'04','Quilcapuncu'),(1717,172,'05','Sina'),(1718,173,'01','Juliaca'),(1719,173,'02','Cabana'),(1720,173,'03','Cabanillas'),(1721,173,'04','Caracoto'),(1722,173,'05','San Miguel'),(1723,174,'01','Sandia'),(1724,174,'02','Cuyocuyo'),(1725,174,'03','Limbani'),(1726,174,'04','Patambuco'),(1727,174,'05','Phara'),(1728,174,'06','Quiaca'),(1729,174,'07','San Juan del Oro'),(1730,174,'08','Yanahuaya'),(1731,174,'09','Alto Inambari'),(1732,174,'10','San Pedro de Putina Punco'),(1733,175,'01','Yunguyo'),(1734,175,'02','Anapia'),(1735,175,'03','Copani'),(1736,175,'04','Cuturapi'),(1737,175,'05','Ollaraya'),(1738,175,'06','Tinicachi'),(1739,175,'07','Unicachi'),(1740,176,'01','Moyobamba'),(1741,176,'02','Calzada'),(1742,176,'03','Habana'),(1743,176,'04','Jepelacio'),(1744,176,'05','Soritor'),(1745,176,'06','Yantalo'),(1746,177,'01','Bellavista'),(1747,177,'02','Alto Biavo'),(1748,177,'03','Bajo Biavo'),(1749,177,'04','Huallaga'),(1750,177,'05','San Pablo'),(1751,177,'06','San Rafael'),(1752,178,'01','San José de Sisa'),(1753,178,'02','Agua Blanca'),(1754,178,'03','San Martín'),(1755,178,'04','Santa Rosa'),(1756,178,'05','Shatoja'),(1757,179,'01','Saposoa'),(1758,179,'02','Alto Saposoa'),(1759,179,'03','El Eslabón'),(1760,179,'04','Piscoyacu'),(1761,179,'05','Sacanche'),(1762,179,'06','Tingo de Saposoa'),(1763,180,'01','Lamas'),(1764,180,'02','Alonso de Alvarado'),(1765,180,'03','Barranquita'),(1766,180,'04','Caynarachi'),(1767,180,'05','Cuñumbuqui'),(1768,180,'06','Pinto Recodo'),(1769,180,'07','Rumisapa'),(1770,180,'08','San Roque de Cumbaza'),(1771,180,'09','Shanao'),(1772,180,'10','Tabalosos'),(1773,180,'11','Zapatero'),(1774,181,'01','Juanjuí'),(1775,181,'02','Campanilla'),(1776,181,'03','Huicungo'),(1777,181,'04','Pachiza'),(1778,181,'05','Pajarillo'),(1779,182,'01','Picota'),(1780,182,'02','Buenos Aires'),(1781,182,'03','Caspisapa'),(1782,182,'04','Pilluana'),(1783,182,'05','Pucacaca'),(1784,182,'06','San Cristóbal'),(1785,182,'07','San Hilarión'),(1786,182,'08','Shamboyacu'),(1787,182,'09','Tingo de Ponasa'),(1788,182,'10','Tres Unidos'),(1789,183,'01','Rioja'),(1790,183,'02','Awajun'),(1791,183,'03','Elías Soplin Vargas'),(1792,183,'04','Nueva Cajamarca'),(1793,183,'05','Pardo Miguel'),(1794,183,'06','Posic'),(1795,183,'07','San Fernando'),(1796,183,'08','Yorongos'),(1797,183,'09','Yuracyacu'),(1798,184,'01','Tarapoto'),(1799,184,'02','Alberto Leveau'),(1800,184,'03','Cacatachi'),(1801,184,'04','Chazuta'),(1802,184,'05','Chipurana'),(1803,184,'06','El Porvenir'),(1804,184,'07','Huimbayoc'),(1805,184,'08','Juan Guerra'),(1806,184,'09','La Banda de Shilcayo'),(1807,184,'10','Morales'),(1808,184,'11','Papaplaya'),(1809,184,'12','San Antonio'),(1810,184,'13','Sauce'),(1811,184,'14','Shapaja'),(1812,185,'01','Tocache'),(1813,185,'02','Nuevo Progreso'),(1814,185,'03','Polvora'),(1815,185,'04','Shunte'),(1816,185,'05','Uchiza'),(1817,186,'01','Tacna'),(1818,186,'02','Alto de la Alianza'),(1819,186,'03','Calana'),(1820,186,'04','Ciudad Nueva'),(1821,186,'05','Inclan'),(1822,186,'06','Pachia'),(1823,186,'07','Palca'),(1824,186,'08','Pocollay'),(1825,186,'09','Sama'),(1826,186,'10','Coronel Gregorio Albarracín Lanchipa'),(1827,186,'11','La Yarada los Palos'),(1828,187,'01','Candarave'),(1829,187,'02','Cairani'),(1830,187,'03','Camilaca'),(1831,187,'04','Curibaya'),(1832,187,'05','Huanuara'),(1833,187,'06','Quilahuani'),(1834,188,'01','Locumba'),(1835,188,'02','Ilabaya'),(1836,188,'03','Ite'),(1837,189,'01','Tarata'),(1838,189,'02','Héroes Albarracín'),(1839,189,'03','Estique'),(1840,189,'04','Estique-Pampa'),(1841,189,'05','Sitajara'),(1842,189,'06','Susapaya'),(1843,189,'07','Tarucachi'),(1844,189,'08','Ticaco'),(1845,190,'01','Tumbes'),(1846,190,'02','Corrales'),(1847,190,'03','La Cruz'),(1848,190,'04','Pampas de Hospital'),(1849,190,'05','San Jacinto'),(1850,190,'06','San Juan de la Virgen'),(1851,191,'01','Zorritos'),(1852,191,'02','Casitas'),(1853,191,'03','Canoas de Punta Sal'),(1854,192,'01','Zarumilla'),(1855,192,'02','Aguas Verdes'),(1856,192,'03','Matapalo'),(1857,192,'04','Papayal'),(1858,193,'01','Calleria'),(1859,193,'02','Campoverde'),(1860,193,'03','Iparia'),(1861,193,'04','Masisea'),(1862,193,'05','Yarinacocha'),(1863,193,'06','Nueva Requena'),(1864,193,'07','Manantay'),(1865,194,'01','Raymondi'),(1866,194,'02','Sepahua'),(1867,194,'03','Tahuania'),(1868,194,'04','Yurua'),(1869,195,'01','Padre Abad'),(1870,195,'02','Irazola'),(1871,195,'03','Curimana'),(1872,195,'04','Neshuya'),(1873,195,'05','Alexander Von Humboldt'),(1874,196,'01','Purus');
/*!40000 ALTER TABLE `ubigeo_dist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubigeo_prov`
--

DROP TABLE IF EXISTS `ubigeo_prov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubigeo_prov` (
  `ubigeo_prov_id` int(4) NOT NULL,
  `ubigeo_dep_id` int(4) DEFAULT NULL,
  `codigo` varchar(2) DEFAULT NULL,
  `ubigeo_prov` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubigeo_prov`
--

LOCK TABLES `ubigeo_prov` WRITE;
/*!40000 ALTER TABLE `ubigeo_prov` DISABLE KEYS */;
INSERT INTO `ubigeo_prov` VALUES (1,1,'01','Chachapoyas'),(2,1,'02','Bagua'),(3,1,'03','Bongará'),(4,1,'04','Condorcanqui'),(5,1,'05','Luya'),(6,1,'06','Rodríguez de Mendoza'),(7,1,'07','Utcubamba'),(8,2,'01','Huaraz'),(9,2,'02','Aija'),(10,2,'03','Antonio Raymondi'),(11,2,'04','Asunción'),(12,2,'05','Bolognesi'),(13,2,'06','Carhuaz'),(14,2,'07','Carlos Fermín Fitzcarrald'),(15,2,'08','Casma'),(16,2,'09','Corongo'),(17,2,'10','Huari'),(18,2,'11','Huarmey'),(19,2,'12','Huaylas'),(20,2,'13','Mariscal Luzuriaga'),(21,2,'14','Ocros'),(22,2,'15','Pallasca'),(23,2,'16','Pomabamba'),(24,2,'17','Recuay'),(25,2,'18','Santa'),(26,2,'19','Sihuas'),(27,2,'20','Yungay'),(28,3,'01','Abancay'),(29,3,'02','Andahuaylas'),(30,3,'03','Antabamba'),(31,3,'04','Aymaraes'),(32,3,'05','Cotabambas'),(33,3,'06','Chincheros'),(34,3,'07','Grau'),(35,4,'01','Arequipa'),(36,4,'02','Camaná'),(37,4,'03','Caravelí'),(38,4,'04','Castilla'),(39,4,'05','Caylloma'),(40,4,'06','Condesuyos'),(41,4,'07','Islay'),(42,4,'08','La Uniòn'),(43,5,'01','Huamanga'),(44,5,'02','Cangallo'),(45,5,'03','Huanca Sancos'),(46,5,'04','Huanta'),(47,5,'05','La Mar'),(48,5,'06','Lucanas'),(49,5,'07','Parinacochas'),(50,5,'08','Pàucar del Sara Sara'),(51,5,'09','Sucre'),(52,5,'10','Víctor Fajardo'),(53,5,'11','Vilcas Huamán'),(54,6,'01','Cajamarca'),(55,6,'02','Cajabamba'),(56,6,'03','Celendín'),(57,6,'04','Chota'),(58,6,'05','Contumazá'),(59,6,'06','Cutervo'),(60,6,'07','Hualgayoc'),(61,6,'08','Jaén'),(62,6,'09','San Ignacio'),(63,6,'10','San Marcos'),(64,6,'11','San Miguel'),(65,6,'12','San Pablo'),(66,6,'13','Santa Cruz'),(67,7,'01','Prov. Const. del Callao'),(68,8,'01','Cusco'),(69,8,'02','Acomayo'),(70,8,'03','Anta'),(71,8,'04','Calca'),(72,8,'05','Canas'),(73,8,'06','Canchis'),(74,8,'07','Chumbivilcas'),(75,8,'08','Espinar'),(76,8,'09','La Convención'),(77,8,'10','Paruro'),(78,8,'11','Paucartambo'),(79,8,'12','Quispicanchi'),(80,8,'13','Urubamba'),(81,9,'01','Huancavelica'),(82,9,'02','Acobamba'),(83,9,'03','Angaraes'),(84,9,'04','Castrovirreyna'),(85,9,'05','Churcampa'),(86,9,'06','Huaytará'),(87,9,'07','Tayacaja'),(88,10,'01','Huánuco'),(89,10,'02','Ambo'),(90,10,'03','Dos de Mayo'),(91,10,'04','Huacaybamba'),(92,10,'05','Huamalíes'),(93,10,'06','Leoncio Prado'),(94,10,'07','Marañón'),(95,10,'08','Pachitea'),(96,10,'09','Puerto Inca'),(97,10,'10','Lauricocha '),(98,10,'11','Yarowilca '),(99,11,'01','Ica '),(100,11,'02','Chincha '),(101,11,'03','Nasca '),(102,11,'04','Palpa '),(103,11,'05','Pisco '),(104,12,'01','Huancayo '),(105,12,'02','Concepción '),(106,12,'03','Chanchamayo '),(107,12,'04','Jauja '),(108,12,'05','Junín '),(109,12,'06','Satipo '),(110,12,'07','Tarma '),(111,12,'08','Yauli '),(112,12,'09','Chupaca '),(113,13,'01','Trujillo '),(114,13,'02','Ascope '),(115,13,'03','Bolívar '),(116,13,'04','Chepén '),(117,13,'05','Julcán '),(118,13,'06','Otuzco '),(119,13,'07','Pacasmayo '),(120,13,'08','Pataz '),(121,13,'09','Sánchez Carrión '),(122,13,'10','Santiago de Chuco '),(123,13,'11','Gran Chimú '),(124,13,'12','Virú '),(125,14,'01','Chiclayo '),(126,14,'02','Ferreñafe '),(127,14,'03','Lambayeque '),(128,15,'01','Lima '),(129,15,'02','Barranca '),(130,15,'03','Cajatambo '),(131,15,'04','Canta '),(132,15,'05','Cañete '),(133,15,'06','Huaral '),(134,15,'07','Huarochirí '),(135,15,'08','Huaura '),(136,15,'09','Oyón '),(137,15,'10','Yauyos '),(138,16,'01','Maynas '),(139,16,'02','Alto Amazonas '),(140,16,'03','Loreto '),(141,16,'04','Mariscal Ramón Castilla '),(142,16,'05','Requena '),(143,16,'06','Ucayali '),(144,16,'07','Datem del Marañón '),(145,16,'08','Putumayo'),(146,17,'01','Tambopata '),(147,17,'02','Manu '),(148,17,'03','Tahuamanu '),(149,18,'01','Mariscal Nieto '),(150,18,'02','General Sánchez Cerro '),(151,18,'03','Ilo '),(152,19,'01','Pasco '),(153,19,'02','Daniel Alcides Carrión '),(154,19,'03','Oxapampa '),(155,20,'01','Piura '),(156,20,'02','Ayabaca '),(157,20,'03','Huancabamba '),(158,20,'04','Morropón '),(159,20,'05','Paita '),(160,20,'06','Sullana '),(161,20,'07','Talara '),(162,20,'08','Sechura '),(163,21,'01','Puno '),(164,21,'02','Azángaro '),(165,21,'03','Carabaya '),(166,21,'04','Chucuito '),(167,21,'05','El Collao '),(168,21,'06','Huancané '),(169,21,'07','Lampa '),(170,21,'08','Melgar '),(171,21,'09','Moho '),(172,21,'10','San Antonio de Putina '),(173,21,'11','San Román '),(174,21,'12','Sandia '),(175,21,'13','Yunguyo '),(176,22,'01','Moyobamba '),(177,22,'02','Bellavista '),(178,22,'03','El Dorado '),(179,22,'04','Huallaga '),(180,22,'05','Lamas '),(181,22,'06','Mariscal Cáceres '),(182,22,'07','Picota '),(183,22,'08','Rioja '),(184,22,'09','San Martín '),(185,22,'10','Tocache '),(186,23,'01','Tacna '),(187,23,'02','Candarave '),(188,23,'03','Jorge Basadre '),(189,23,'04','Tarata '),(190,24,'01','Tumbes '),(191,24,'02','Contralmirante Villar '),(192,24,'03','Zarumilla '),(193,25,'01','Coronel Portillo '),(194,25,'02','Atalaya '),(195,25,'03','Padre Abad '),(196,25,'04','Purús');
/*!40000 ALTER TABLE `ubigeo_prov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index',
  `nombres` varchar(50) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `user_name` varchar(64) NOT NULL COMMENT 'user''s name, unique',
  `hora` time NOT NULL,
  `user_email` varchar(64) DEFAULT NULL COMMENT 'user''s email, unique',
  `date_added` datetime NOT NULL,
  `accesos` varchar(100) NOT NULL,
  `dni` varchar(200) NOT NULL,
  `domicilio` text NOT NULL,
  `telefono` text NOT NULL,
  `sucursal` int(2) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (60,'Miguel Alfonzo Chavez Ramos','123456','inori28','19:00:00','pt42229274@idat.edu.pe','2023-08-11 12:39:13','1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.0.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.0.0.0.0.0','42229274','','935681036',1,'user.png',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(10) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` text NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vista_lista_pedidos`
--

DROP TABLE IF EXISTS `vista_lista_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vista_lista_pedidos` (
  `id_cliente` int(11) DEFAULT NULL,
  `nombre_cliente` varchar(255) DEFAULT NULL,
  `telefono_cliente` char(30) DEFAULT NULL,
  `email_cliente` varchar(64) DEFAULT NULL,
  `direccion_cliente` varchar(255) DEFAULT NULL,
  `distrito` text DEFAULT NULL,
  `documento` varchar(21) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `producto` mediumtext DEFAULT NULL,
  `cantidad` decimal(32,0) DEFAULT NULL,
  `total` decimal(39,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vista_lista_pedidos`
--

LOCK TABLES `vista_lista_pedidos` WRITE;
/*!40000 ALTER TABLE `vista_lista_pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vista_lista_pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 16:53:38
