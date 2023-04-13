/* Se incluyeron las tablas: audits, ciudad, deposito, empresa, marca, movimiento_producto, movimiento_usuario, pais, producto, proveedor, tipo_movimiento, tipo_producto
                             tipo_usuario, usuario, usuario_tipo
*/

-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: control_stock_coder
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `audits`
--

LOCK TABLES `audits` WRITE;
/*!40000 ALTER TABLE `audits` DISABLE KEYS */;
INSERT INTO `audits` VALUES (1,'marca',7,'2023-03-28 18:33:34','root@localhost','2023-03-28 18:33:34','root@localhost'),(2,'producto',5,'2023-03-28 19:05:55','root@localhost','2023-03-28 19:05:55','root@localhost'),(3,'producto',4,'2023-03-28 19:08:33','root@localhost','2023-03-28 19:08:33','root@localhost');
/*!40000 ALTER TABLE `audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Sunchales','2322'),(2,'Rafaela','2300'),(3,'Santa Fe','3000'),(5,'Cañada Rosquin','2454');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `deposito`
--

LOCK TABLES `deposito` WRITE;
/*!40000 ALTER TABLE `deposito` DISABLE KEYS */;
INSERT INTO `deposito` VALUES (1,'Ameghino 35',1,1),(2,'Carabobo 567',2,1),(3,'Lapachos 89',3,1);
/*!40000 ALTER TABLE `deposito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'Compuct SA',1,1),(2,'GBR SA',3,1),(3,'MUNDO ELECTRONICA',2,1),(4,'CABL',1,1);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Hanwa'),(2,'Sony'),(3,'Spec'),(4,'Hp'),(5,'Dell'),(6,'Lenovo'),(7,'Hikvision');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `movimiento_producto`
--

LOCK TABLES `movimiento_producto` WRITE;
/*!40000 ALTER TABLE `movimiento_producto` DISABLE KEYS */;
INSERT INTO `movimiento_producto` VALUES (7,1,3,1),(8,1,1,3),(9,1,2,2);
/*!40000 ALTER TABLE `movimiento_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `movimiento_usuario`
--

LOCK TABLES `movimiento_usuario` WRITE;
/*!40000 ALTER TABLE `movimiento_usuario` DISABLE KEYS */;
INSERT INTO `movimiento_usuario` VALUES (10,1,3,1),(11,1,1,3),(12,1,2,2);
/*!40000 ALTER TABLE `movimiento_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Argentina'),(2,'Paraguay'),(3,'Uruguay');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,3,'Notebook HP core i5 256 gb sd 8 gb ram serie 5466845',4,178000,2,1,1),(2,1,'Camara bullet sony 4 mpx fullhd serie 897112',2,45000,8,3,1),(3,7,'Lector de tarjetas SPEC serie 89666532',3,80000,15,2,1),(4,4,'Tablet LENOVO TB8505F 8 32 GB GRIS',6,48000,4,2,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Dell SA','30-70719842-3','Las lajitas 450',3,1),(2,'SPEC SA','30-70743839-4','General Belgrano 67',2,1),(3,'Importaciones America','30-704675832-3','Los Aromos',3,1);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_movimiento`
--

LOCK TABLES `tipo_movimiento` WRITE;
/*!40000 ALTER TABLE `tipo_movimiento` DISABLE KEYS */;
INSERT INTO `tipo_movimiento` VALUES (1,'Ingreso'),(2,'Egreso');
/*!40000 ALTER TABLE `tipo_movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_producto`
--

LOCK TABLES `tipo_producto` WRITE;
/*!40000 ALTER TABLE `tipo_producto` DISABLE KEYS */;
INSERT INTO `tipo_producto` VALUES (1,'Camara bullet'),(2,'Camara domo'),(3,'Notebook'),(4,'Tablet'),(5,'Control horario'),(6,'Control de acceso'),(7,'Lector de acceso');
/*!40000 ALTER TABLE `tipo_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES (1,'Analista de tecnologia',4),(2,'Supervisor de seguridad',2),(3,'jefe de telecomunicaciones',2),(4,'Gerente de tecnología',1),(5,'Secretaria',3);
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Jose','Martinez',33789653,1,2),(2,'Alberto','Colazzo',25789712,2,4),(3,'Mario','Dobler',30485691,1,3);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario_tipo`
--

LOCK TABLES `usuario_tipo` WRITE;
/*!40000 ALTER TABLE `usuario_tipo` DISABLE KEYS */;
INSERT INTO `usuario_tipo` VALUES (1,3,3),(2,1,2),(3,2,4);
/*!40000 ALTER TABLE `usuario_tipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-13 13:44:41
