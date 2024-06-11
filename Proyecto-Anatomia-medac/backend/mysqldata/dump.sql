-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: db    Database: anatomia
-- ------------------------------------------------------
-- Server version       8.4.0

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
-- Table structure for table `api_aumento`
--

DROP TABLE IF EXISTS `api_aumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_aumento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `zoom` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zoom` (`zoom`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_aumento`
--

LOCK TABLES `api_aumento` WRITE;
/*!40000 ALTER TABLE `api_aumento` DISABLE KEYS */;
INSERT INTO `api_aumento` VALUES
(2,'X10'),
(4,'X100'),
(1,'X4'),
(3,'X40');
/*!40000 ALTER TABLE `api_aumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_codificacioninterpretacion`
--

DROP TABLE IF EXISTS `api_codificacioninterpretacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_codificacioninterpretacion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codigo` varchar(7) NOT NULL,
  `descripcion` longtext NOT NULL,
  `naturaleza` varchar(50) NOT NULL,
  `organo` varchar(30) NOT NULL,
  `tipo` varchar(14) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`),
  KEY `api_codificacioninte_naturaleza_df3e802b_fk_api_natur` (`naturaleza`),
  KEY `api_codificacioninte_organo_1bd081ce_fk_api_organ` (`organo`),
  KEY `api_codificacioninterpretacion_tipo_732f5940_fk_api_tipo_tipo` (`tipo`),
  CONSTRAINT `api_codificacioninte_naturaleza_df3e802b_fk_api_natur` FOREIGN KEY (`naturaleza`) REFERENCES `api_naturaleza` (`naturaleza`),
  CONSTRAINT `api_codificacioninte_organo_1bd081ce_fk_api_organ` FOREIGN KEY (`organo`) REFERENCES `api_organo` (`organo`),
  CONSTRAINT `api_codificacioninterpretacion_tipo_732f5940_fk_api_tipo_tipo` FOREIGN KEY (`tipo`) REFERENCES `api_tipo` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_codificacioninterpretacion`
--

LOCK TABLES `api_codificacioninterpretacion` WRITE;
/*!40000 ALTER TABLE `api_codificacioninterpretacion` DISABLE KEYS */;
INSERT INTO `api_codificacioninterpretacion` VALUES
(1,'BC.1','Toma válida para examen.','Biopsia','Corazón','Calidad'),
(2,'BC.2','Toma válida para examen aunque limitada por ausencia de células endocárdicas/zona de transición.','Biopsia','Corazón','Calidad'),
(3,'BC.3','Toma válida para examen aunque limitada por hemorragia.','Biopsia','Corazón','Calidad'),
(4,'BC.4','Toma válida para examen aunque limitada por escasez de células.','Biopsia','Corazón','Calidad'),
(5,'BC.5','Toma válida para examen aunque limitada por intensa citólisis.','Biopsia','Corazón','Calidad'),
(6,'BC.6','Toma válida para examen aunque limitada por...','Biopsia','Corazón','Calidad'),
(7,'BC.7','Toma no valorable por desecación.','Biopsia','Corazón','Calidad'),
(8,'BC.8','Toma no valorable por ausencia de células...','Biopsia','Corazón','Calidad'),
(9,'BC.9','Toma no valorable por...','Biopsia','Corazón','Calidad'),
(10,'1.1','Se observa una arquitectura cardíaca conservada, con una adecuada distribución de miocitos y estructuras vasculares.','Biopsia','Corazón','Interpretación'),
(11,'1.2','No se observan signos evidentes de necrosis en el tejido cardíaco, lo que sugiere una integridad estructural relativamente normal.','Biopsia','Corazón','Interpretación'),
(12,'1.3','Identificación de células inflamatorias dispersas en el tejido, indicativas de una respuesta inflamatoria leve o moderada.','Biopsia','Corazón','Interpretación'),
(13,'1.4','Presencia de áreas de fibrosis en el miocardio, posiblemente como resultado de un proceso de cicatrización tras una lesión cardíaca previa.','Biopsia','Corazón','Interpretación'),
(14,'1.5','Se detecta una adecuada perfusión sanguínea en los vasos coronarios, indicativa de una circulación coronaria funcional.','Biopsia','Corazón','Interpretación'),
(15,'1.6','Observación de células cardíacas con una apariencia histológica normal, incluyendo la presencia de discos intercalares y estriaciones transversales.','Biopsia','Corazón','Interpretación'),
(16,'1.7','No se observan células tumorales ni signos de infiltración neoplásica en el tejido cardíaco.','Biopsia','Corazón','Interpretación'),
(17,'1.8','Identificación de células endoteliales íntegras en los vasos sanguíneos, sugiriendo una función endotelial adecuada.','Biopsia','Corazón','Interpretación'),
(18,'1.9','Se observa una distribución regular de fibras de colágeno en el miocardio, indicativo de una matriz extracelular bien organizada.','Biopsia','Corazón','Interpretación'),
(19,'1.10','No se identifican anomalías estructurales significativas en las válvulas cardíacas ni en las cámaras cardíacas.','Biopsia','Corazón','Interpretación'),
(20,'BH.1','La muestra es válida para el examen.','Biopsia','Hígado','Calidad'),
(21,'BH.2','Aunque válida, la muestra está limitada por la ausencia de células endoteliales/hepatocitos periportales.','Biopsia','Hígado','Calidad'),
(22,'BH.3','La muestra es válida para el examen, pero está limitada por la presencia de hemorragia.','Biopsia','Hígado','Calidad'),
(23,'BH.4','La muestra es válida para el examen, pero está limitada por la escasez de células.','Biopsia','Hígado','Calidad'),
(24,'BH.5','La muestra es válida para el examen, aunque está limitada por una intensa citolisis.','Biopsia','Hígado','Calidad'),
(25,'BH.6','La muestra es válida para el examen, aunque está limitada por...','Biopsia','Hígado','Calidad'),
(26,'BH.7','La muestra no es valorable debido a la desecación.','Biopsia','Hígado','Calidad'),
(27,'BH.8','La muestra no es valorable debido a la ausencia de células...','Biopsia','Hígado','Calidad'),
(28,'BH.9','La muestra no es valorable debido a...','Biopsia','Hígado','Calidad'),
(29,'2.1','Se observa una arquitectura hepática conservada, con cordones de hepatocitos bien definidos y distribución lobulillar normal.','Biopsia','Hígado','Interpretación'),
(30,'2.2','Hay presencia de infiltración celular en los sinusoides hepáticos, sugiriendo una respuesta inflamatoria o un proceso infiltrativo.','Biopsia','Hígado','Interpretación'),
(31,'2.3','Se identifica una acumulación de lípidos en los hepatocitos, indicativo de esteatosis hepática.','Biopsia','Hígado','Interpretación'),
(32,'2.4','Se observan signos de necrosis focal en el tejido, posiblemente debido a isquemia o daño tóxico.','Biopsia','Hígado','Interpretación'),
(33,'2.5','Existe una marcada fibrosis periportal, sugiriendo un proceso crónico de inflamación hepática.','Biopsia','Hígado','Interpretación'),
(34,'2.6','Se observan nódulos de regeneración, indicativos de un proceso de reparación hepática.','Biopsia','Hígado','Interpretación'),
(35,'2.7','Presencia de células de Kupffer activadas, sugiriendo una respuesta inmunitaria o inflamatoria.','Biopsia','Hígado','Interpretación'),
(36,'2.8','Se detectan células endoteliales anormales en los vasos sanguíneos hepáticos, lo que podría indicar un proceso neoplásico.','Biopsia','Hígado','Interpretación'),
(37,'2.9','Se observa una marcada congestión sinusoidal, posiblemente debido a una obstrucción del flujo sanguíneo hepático.','Biopsia','Hígado','Interpretación'),
(38,'2.10','Hay signos de colestasis intrahepática, indicando una obstrucción en el flujo de la bilis dentro del hígado.','Biopsia','Hígado','Interpretación'),
(39,'BES.1','La muestra es válida para el examen.','Biopsia','Estómago','Calidad'),
(40,'BES.2','Aunque válida, la muestra está limitada por la presencia de contenido gástrico residual.','Biopsia','Estómago','Calidad'),
(41,'BES.3','La muestra es válida para el examen, pero está limitada por la presencia de sangre.','Biopsia','Estómago','Calidad'),
(42,'BES.4','La muestra es válida para el examen, pero está limitada por la escasez de células.','Biopsia','Estómago','Calidad'),
(43,'BES.5','La muestra es válida para el examen, aunque está limitada por la presencia de moco.','Biopsia','Estómago','Calidad'),
(44,'BES.6','La muestra es válida para el examen, aunque está limitada por...','Biopsia','Estómago','Calidad'),
(45,'BES.7','La muestra no es valorable debido a la desecación.','Biopsia','Estómago','Calidad'),
(46,'BES.8','La muestra no es valorable debido a la ausencia de tejido gástrico...','Biopsia','Estómago','Calidad'),
(47,'BES.9','La muestra no es valorable debido a...','Biopsia','Estómago','Calidad'),
(48,'3.1','Se observa un epitelio gástrico intacto y bien conservado.','Biopsia','Estómago','Interpretación'),
(49,'3.2','Presencia de infiltración de células inflamatorias en la lámina propia, sugiriendo una\nrespuesta inflamatoria crónica.','Biopsia','Estómago','Interpretación'),
(50,'3.3','Identificación de células caliciformes productoras de moco en las glándulas\ngástricas.','Biopsia','Estómago','Interpretación'),
(51,'3.4','Signos de erosión superficial de la mucosa gástrica, posiblemente debido a irritación\ncrónica.','Biopsia','Estómago','Interpretación'),
(52,'3.5','Presencia de gastritis aguda, evidenciada por la infiltración de neutrófilos en la\nmucosa gástrica.','Biopsia','Estómago','Interpretación'),
(53,'3.6','Observación de cambios displásicos en el epitelio gástrico, sugiriendo un proceso\npreneoplásico.','Biopsia','Estómago','Interpretación'),
(54,'3.7','Detección de Helicobacter pylori en la mucosa gástrica, indicando una infección\nbacteriana.','Biopsia','Estómago','Interpretación'),
(55,'3.8','Presencia de metaplasia intestinal en la mucosa gástrica, sugiriendo una adaptación\nal ambiente ácido del estómago.','Biopsia','Estómago','Interpretación'),
(56,'3.9','Identificación de células neuroendocrinas en las glándulas gástricas, indicando una\nfunción endocrina.','Biopsia','Estómago','Interpretación'),
(57,'3.10','Signos de ulceración profunda en la mucosa gástrica, posiblemente relacionada\ncon un proceso ulceroso crónico.','Biopsia','Estómago','Interpretación'),
(58,'BR.1','La muestra es válida para el examen.','Biopsia','Riñón','Calidad'),
(59,'BR.2','Aunque válida, la muestra está limitada por la presencia de tejido adiposo\nperirrenal.','Biopsia','Riñón','Calidad'),
(60,'BR.3','La muestra es válida para el examen, pero está limitada por la presencia de sangre\nen el espécimen.','Biopsia','Riñón','Calidad'),
(61,'BR.4','La muestra es válida para el examen, pero está limitada por la escasez de\nglomérulos en el corte.','Biopsia','Riñón','Calidad'),
(62,'BR.5','La muestra es válida para el examen, aunque está limitada por la presencia de\nartefactos de fijación.','Biopsia','Riñón','Calidad'),
(63,'BR.6','La muestra es válida para el examen, aunque está limitada por...','Biopsia','Riñón','Calidad'),
(64,'BR.7','La muestra no es valorable debido a la desecación.','Biopsia','Riñón','Calidad'),
(65,'BR.8','La muestra no es valorable debido a la ausencia de tejido renal...','Biopsia','Riñón','Calidad'),
(66,'BR.9','La muestra no es valorable debido a...','Biopsia','Riñón','Calidad'),
(67,'4.1','Se observa una arquitectura renal conservada, con una adecuada distribución de los\ndiferentes componentes histológicos.','Biopsia','Riñón','Interpretación'),
(68,'4.2','Presencia de infiltración de tejido adiposo perirrenal,.','Biopsia','Riñón','Interpretación'),
(69,'4.3','Identificación de glóbulos rojos en los túbulos renales, indicativo de hematuria y\nposible lesión glomerular.','Biopsia','Riñón','Interpretación'),
(70,'4.4','Signos de esclerosis glomerular, evidenciada por la presencia de matriz extracelular\naumentada y segmentos glomerulares colapsados.','Biopsia','Riñón','Interpretación'),
(71,'4.5','Presencia de artefactos de fijación en el tejido, lo que puede dificultar la\ninterpretación precisa de algunas estructuras.','Biopsia','Riñón','Interpretación'),
(72,'4.6','Observación de necrosis tubular aguda, caracterizada por la pérdida de la\narquitectura tubular y la presencia de células necróticas en el lumen tubular.','Biopsia','Riñón','Interpretación'),
(73,'4.7','Detección de cilindros hialinos en los túbulos renales, indicando una posible\nproteinuria.','Biopsia','Riñón','Interpretación'),
(74,'4.8','Presencia de células inflamatorias en el intersticio renal, sugiriendo una respuesta\ninflamatoria crónica.','Biopsia','Riñón','Interpretación'),
(75,'4.9','Identificación de cuerpos ovales grasos en los túbulos renales, indicativos de daño\nrenal crónico y degeneración lipídica.','Biopsia','Riñón','Interpretación'),
(76,'4.10','Signos de fibrosis intersticial, evidenciada por la presencia de tejido conectivo\nfibroso entre los túbulos renales y los glomérulos.','Biopsia','Riñón','Interpretación'),
(77,'BU.1','La muestra es válida para el examen.','Biopsia','Útero','Calidad'),
(78,'BU.2','Aunque válida, la muestra está limitada por la presencia de sangre menstrual en el\nespécimen.','Biopsia','Útero','Calidad'),
(79,'BU.3','La muestra es válida para el examen, pero está limitada por la escasez de tejido\nendometrial en el corte.','Biopsia','Útero','Calidad'),
(80,'BU.4','La muestra es válida para el examen, pero está limitada por la presencia de\nartefactos de fijación.','Biopsia','Útero','Calidad'),
(81,'BU.5','La muestra es válida para el examen, aunque está limitada por la presencia de\ncélulas descamadas en el endometrio.','Biopsia','Útero','Calidad'),
(82,'BU.6','La muestra es válida para el examen, aunque está limitada por...','Biopsia','Útero','Calidad'),
(83,'BU.7','La muestra no es valorable debido a la desecación.','Biopsia','Útero','Calidad'),
(84,'BU.8','La muestra no es valorable debido a la ausencia de tejido uterino...','Biopsia','Útero','Calidad'),
(85,'BU.9','La muestra no es valorable debido a...','Biopsia','Útero','Calidad'),
(86,'5.1','Se observa un endometrio bien conservado, con una adecuada proliferación glandular\ny estroma endometrial.','Biopsia','Útero','Interpretación'),
(87,'5.2','Presencia de sangre en el espécimen, indicando la fase menstrual del ciclo uterino.','Biopsia','Útero','Interpretación'),
(88,'5.3','Identificación de escaso tejido endometrial en el corte, sugiriendo una posible atrofia\nendometrial.','Biopsia','Útero','Interpretación'),
(89,'5.4','Signos de artefactos de fijación en el tejido, lo que puede dificultar la interpretación\nprecisa de algunas estructuras.','Biopsia','Útero','Interpretación'),
(90,'5.5','Observación de células descamadas en el endometrio, indicativas de la fase de\ndescamación menstrual.','Biopsia','Útero','Interpretación'),
(91,'5.6','Detección de hiperplasia glandular endometrial, sugiriendo un desequilibrio\nhormonal.','Biopsia','Útero','Interpretación'),
(92,'5.7','Presencia de infiltración de células inflamatorias en el estroma endometrial,\nindicando una respuesta inflamatoria crónica.','Biopsia','Útero','Interpretación'),
(93,'5.8','Identificación de cuerpos de Arias-Stella en las células glandulares, sugiriendo\ncambios hormonales asociados con el embarazo o condiciones patológicas.','Biopsia','Útero','Interpretación'),
(94,'5.9','Signos de adenomiosis, evidenciada por la presencia de glándulas endometriales\ndentro del miometrio.','Biopsia','Útero','Interpretación'),
(95,'5.10','Presencia de células atípicas en las glándulas endometriales, sugiriendo una posible\nneoplasia endometrial.','Biopsia','Útero','Interpretación'),
(96,'BI.1','La muestra es válida para el examen.','Biopsia','Intestino','Calidad'),
(97,'BI.2','Aunque válida, la muestra está limitada por la presencia de contenido fecal en el\nlumen intestinal.','Biopsia','Intestino','Calidad'),
(98,'BI.3','La muestra es válida para el examen, pero está limitada por la escasez de tejido\nmucoso en el corte.','Biopsia','Intestino','Calidad'),
(99,'BI.4','La muestra es válida para el examen, pero está limitada por la presencia de\nartefactos de fijación.','Biopsia','Intestino','Calidad'),
(100,'BI.5','La muestra es válida para el examen, aunque está limitada por la presencia de\ntejido adiposo perivisceral.','Biopsia','Intestino','Calidad'),
(101,'BI.6','La muestra es válida para el examen, aunque está limitada por...','Biopsia','Intestino','Calidad'),
(102,'BI.7','La muestra no es valorable debido a la desecación.','Biopsia','Intestino','Calidad'),
(103,'BI.8','La muestra no es valorable debido a la ausencia de tejido intestinal...','Biopsia','Intestino','Calidad'),
(104,'BI.9','La muestra no es valorable debido a...','Biopsia','Intestino','Calidad'),
(105,'6.1','Se observa una mucosa intestinal con vellosidades bien conservadas y un epitelio\ncolumnar intacto.','Biopsia','Intestino','Interpretación'),
(106,'6.2','Presencia de contenido fecal en el lumen intestinal, indicando la fase digestiva del\nproceso.','Biopsia','Intestino','Interpretación'),
(107,'6.3','Identificación de escaso tejido mucoso en el corte, sugiriendo una posible atrofia de\nlas glándulas mucosas.','Biopsia','Intestino','Interpretación'),
(108,'6.4','Signos de artefactos de fijación en el tejido, lo que puede dificultar la interpretación\nprecisa de algunas estructuras.','Biopsia','Intestino','Interpretación'),
(109,'6.5','Observación de tejido adiposo perivisceral, indicativo de la ubicación anatómica de\nla muestra.','Biopsia','Intestino','Interpretación'),
(110,'6.6','Detección de células caliciformes en las criptas intestinales, indicativas de\nproducción de moco.','Biopsia','Intestino','Interpretación'),
(111,'6.7','Presencia de infiltración de células inflamatorias en la lámina propia, sugiriendo una\nrespuesta inflamatoria crónica.','Biopsia','Intestino','Interpretación'),
(112,'6.8','Identificación de placas de Peyer en la mucosa intestinal, indicativas de tejido\nlinfoide asociado al intestino.','Biopsia','Intestino','Interpretación'),
(113,'6.9','Signos de metaplasia intestinal, evidenciada por la presencia de células caliciformes\nen áreas no habituales.','Biopsia','Intestino','Interpretación'),
(114,'6.10','Presencia de signos de regeneración epitelial, indicativos de un proceso de\nreparación tras una lesión o inflamación.','Biopsia','Intestino','Interpretación'),
(115,'BEF.1','La muestra es válida para el examen.','Biopsia','Esófago','Calidad'),
(116,'BEF.2','Aunque válida, la muestra está limitada por la presencia de contenido alimenticio\nen la luz esofágica.','Biopsia','Esófago','Calidad'),
(117,'BEF.3','La muestra es válida para el examen, pero está limitada por la escasez de tejido\nepitelial en el corte.','Biopsia','Esófago','Calidad'),
(118,'BEF.4','La muestra es válida para el examen, pero está limitada por la presencia de\nartefactos de fijación.','Biopsia','Esófago','Calidad'),
(119,'BEF.5','La muestra es válida para el examen, aunque está limitada por la presencia de\ntejido conectivo periesofágico.','Biopsia','Esófago','Calidad'),
(120,'BEF.6','La muestra es válida para el examen, aunque está limitada por...','Biopsia','Esófago','Calidad'),
(121,'BEF.7','La muestra no es valorable debido a la desecación.','Biopsia','Esófago','Calidad'),
(122,'BEF.8','La muestra no es valorable debido a la ausencia de tejido esofágico...','Biopsia','Esófago','Calidad'),
(123,'BEF.9','La muestra no es valorable debido a...','Biopsia','Esófago','Calidad'),
(124,'7.1','Se observa un epitelio escamoso estratificado bien conservado en la mucosa\nesofágica.','Biopsia','Esófago','Interpretación'),
(125,'7.2','Presencia de contenido alimenticio en la luz esofágica, indicando la fase de tránsito\ndel proceso digestivo.','Biopsia','Esófago','Interpretación'),
(126,'7.3','Identificación de escaso tejido epitelial en el corte, sugiriendo posible atrofia o\nadelgazamiento del epitelio.','Biopsia','Esófago','Interpretación'),
(127,'7.4','Signos de artefactos de fijación en el tejido, lo que puede dificultar la interpretación\nprecisa de algunas estructuras.','Biopsia','Esófago','Interpretación'),
(128,'7.5','Observación de tejido conectivo periesofágico, indicativo de la ubicación anatómica\nde la muestra.','Biopsia','Esófago','Interpretación'),
(129,'7.6','Detección de células caliciformes dispersas en la mucosa esofágica, sugiriendo\nproducción de moco.','Biopsia','Esófago','Interpretación'),
(130,'7.7','Presencia de infiltración de células inflamatorias en la lámina propia, indicando una\nrespuesta inflamatoria.','Biopsia','Esófago','Interpretación'),
(131,'7.8','Identificación de vasos sanguíneos y nervios en la submucosa esofágica,\ncomponentes normales del tejido.','Biopsia','Esófago','Interpretación'),
(132,'7.9','Signos de hiperplasia epitelial, evidenciada por un aumento en el número de capas\ncelulares.','Biopsia','Esófago','Interpretación'),
(133,'7.10','Presencia de células de Langerhans en la mucosa esofágica, indicativas de una\nfunción inmunológica local.','Biopsia','Esófago','Interpretación'),
(134,'BT.1','La muestra es válida para el examen.','Biopsia','Testículos','Calidad'),
(135,'BT.2','Aunque válida, la muestra está limitada por la presencia de células germinales\nescasas.','Biopsia','Testículos','Calidad'),
(136,'BT.3','La muestra es válida para el examen, pero está limitada por la presencia de tejido\nfibroso intersticial.','Biopsia','Testículos','Calidad'),
(137,'BT.4','La muestra es válida para el examen, pero está limitada por la presencia de\nartefactos de fijación.','Biopsia','Testículos','Calidad'),
(138,'BT.5','La muestra es válida para el examen, aunque está limitada por la deshidratación\ndel tejido.','Biopsia','Testículos','Calidad'),
(139,'BT.6','La muestra es válida para el examen, aunque está limitada por...','Biopsia','Testículos','Calidad'),
(140,'BT.7','La muestra no es valorable debido a la desecación.','Biopsia','Testículos','Calidad'),
(141,'BT.8','La muestra no es valorable debido a la ausencia de tejido testicular...','Biopsia','Testículos','Calidad'),
(142,'BT.9','La muestra no es valorable debido a...','Biopsia','Testículos','Calidad'),
(143,'8.1','Se observa una arquitectura testicular conservada, con la presencia de túbulos\nseminíferos bien definidos.','Biopsia','Testículos','Interpretación'),
(144,'8.2','Presencia de células germinales escasas en los túbulos seminíferos, lo que puede\nindicar una disminución en la espermatogénesis.','Biopsia','Testículos','Interpretación'),
(145,'8.3','Identificación de tejido fibroso intersticial entre los túbulos seminíferos, sugiriendo\nuna posible fibrosis testicular.','Biopsia','Testículos','Interpretación'),
(146,'8.4','Signos de artefactos de fijación en el tejido, lo que puede afectar la visualización\nprecisa de algunas estructuras.','Biopsia','Testículos','Interpretación'),
(147,'8.5','Observación de deshidratación del tejido, lo que puede causar contracción y\ndistorsión de las células y estructuras.','Biopsia','Testículos','Interpretación'),
(148,'8.6','Detección de células de Sertoli en los túbulos seminíferos, indicativas de su función\nde soporte para las células germinales.','Biopsia','Testículos','Interpretación'),
(149,'8.7','Presencia de células de Leydig en el tejido intersticial, responsables de la\nproducción de testosterona.','Biopsia','Testículos','Interpretación'),
(150,'8.8','Identificación de células inmaduras o anormales en los túbulos seminíferos,\nsugiriendo un posible trastorno en la espermatogénesis.','Biopsia','Testículos','Interpretación'),
(151,'8.9','Signos de inflamación testicular, evidenciados por la presencia de células\ninflamatorias en el tejido.','Biopsia','Testículos','Interpretación'),
(152,'8.10','Presencia de células apoptóticas en los túbulos seminíferos, indicando un proceso\nde muerte celular programada, posiblemente relacionado con el daño testicular.','Biopsia','Testículos','Interpretación'),
(153,'BP.1','La muestra es válida para el examen.','Biopsia','Pulmón','Calidad'),
(154,'BP.2','Aunque válida, la muestra está limitada por la presencia de tejido necrótico en el\ncorte.','Biopsia','Pulmón','Calidad'),
(155,'BP.3','La muestra es válida para el examen, pero está limitada por la presencia de\nartefactos de fijación.','Biopsia','Pulmón','Calidad'),
(156,'BP.4','La muestra es válida para el examen, pero está limitada por la presencia de células\ninflamatorias abundantes.','Biopsia','Pulmón','Calidad'),
(157,'BP.5','La muestra es válida para el examen, aunque está limitada por la deshidratación\ndel tejido.','Biopsia','Pulmón','Calidad'),
(158,'BP.6','La muestra es válida para el examen, aunque está limitada por...','Biopsia','Pulmón','Calidad'),
(159,'BP.7','La muestra no es valorable debido a la desecación.','Biopsia','Pulmón','Calidad'),
(160,'BP.8','La muestra no es valorable debido a la ausencia de tejido pulmonar...','Biopsia','Pulmón','Calidad'),
(161,'BP.9','La muestra no es valorable debido a...','Biopsia','Pulmón','Calidad'),
(162,'9.1','Se observa una arquitectura pulmonar conservada, con la presencia de alvéolos bien\ndefinidos y paredes alveolares íntegras.','Biopsia','Pulmón','Interpretación'),
(163,'9.2','Presencia de tejido necrótico en el corte, sugiriendo un proceso de necrosis tisular,\nposiblemente debido a una lesión o enfermedad.','Biopsia','Pulmón','Interpretación'),
(164,'9.3','Identificación de artefactos de fijación en el tejido, lo que puede dificultar la\ninterpretación precisa de algunas estructuras.','Biopsia','Pulmón','Interpretación'),
(165,'9.4','Signos de inflamación pulmonar, indicados por la presencia de células inflamatorias\nabundantes en el tejido.','Biopsia','Pulmón','Interpretación'),
(166,'9.5','Observación de deshidratación del tejido, lo que puede causar contracción y\ndistorsión de las células y estructuras.','Biopsia','Pulmón','Interpretación'),
(167,'9.6','Detección de tejido fibroso en los espacios alveolares, sugiriendo fibrosis pulmonar.','Biopsia','Pulmón','Interpretación'),
(168,'9.7','Presencia de células de metaplasia escamosa en las vías respiratorias, indicativas de\nuna respuesta adaptativa al daño crónico.','Biopsia','Pulmón','Interpretación'),
(169,'9.8','Identificación de células neoplásicas en el tejido, sugiriendo un proceso tumoral\npulmonar.','Biopsia','Pulmón','Interpretación'),
(170,'9.9','Signos de edema pulmonar, evidenciados por la presencia de líquido en los espacios\nalveolares.','Biopsia','Pulmón','Interpretación'),
(171,'9.10','Presencia de cuerpos extraños en el tejido, indicando inhalación de material\nextraño.','Biopsia','Pulmón','Interpretación'),
(172,'BB.1','La muestra es válida para el examen.','Biopsia','Bazo','Calidad'),
(173,'BB.2','Aunque válida, la muestra está limitada por la presencia de tejido hemorrágico en\nel corte.','Biopsia','Bazo','Calidad'),
(174,'BB.3','La muestra es válida para el examen, pero está limitada por la escasez de tejido\nlinfoide en la muestra.','Biopsia','Bazo','Calidad'),
(175,'BB.4','La muestra es válida para el examen, pero está limitada por la presencia de\nartefactos de fijación.','Biopsia','Bazo','Calidad'),
(176,'BB.5','La muestra es válida para el examen, aunque está limitada por la deshidratación\ndel tejido.','Biopsia','Bazo','Calidad'),
(177,'BB.6','La muestra es válida para el examen, aunque está limitada por...','Biopsia','Bazo','Calidad'),
(178,'BB.7','La muestra no es valorable debido a la desecación.','Biopsia','Bazo','Calidad'),
(179,'BB.8','La muestra no es valorable debido a la ausencia de tejido esplénico...','Biopsia','Bazo','Calidad'),
(180,'BB.9','La muestra no es valorable debido a...','Biopsia','Bazo','Calidad'),
(181,'10.1','Se observa una arquitectura esplénica conservada, con una adecuada distribución\nde la pulpa blanca y roja.','Biopsia','Bazo','Interpretación'),
(182,'10.2','Presencia de áreas de tejido hemorrágico en el corte, indicativo de hemorragia\nintraparenquimatosa reciente o traumática.','Biopsia','Bazo','Interpretación'),
(183,'10.3','Identificación de escaso tejido linfoide en la muestra, sugiriendo una posible\natrofia o disminución de la actividad inmunológica.','Biopsia','Bazo','Interpretación'),
(184,'10.4','Signos de artefactos de fijación en el tejido, lo que puede dificultar la\ninterpretación precisa de algunas estructuras.','Biopsia','Bazo','Interpretación'),
(185,'10.5','Observación de deshidratación del tejido, lo que puede causar contracción y\ndistorsión de las células y estructuras.','Biopsia','Bazo','Interpretación'),
(186,'10.6','Se detecta un aumento en el tamaño de los folículos linfoides, indicativo de una\nrespuesta inmunológica activa.','Biopsia','Bazo','Interpretación'),
(187,'10.7','Presencia de células plasmáticas en la pulpa blanca, sugiriendo una respuesta\ninmunitaria o inflamatoria.','Biopsia','Bazo','Interpretación'),
(188,'10.8','Identificación de células de la serie eritroide en la pulpa roja, indicando actividad\nhematopoyética.','Biopsia','Bazo','Interpretación'),
(189,'10.9','Se observa una marcada congestión vascular en la pulpa roja, posiblemente como\nrespuesta a la hemorragia o a una estimulación inflamatoria.','Biopsia','Bazo','Interpretación'),
(190,'10.10','Presencia de células fagocíticas en la pulpa roja, indicativas de la función\nfagocítica del bazo en la eliminación de células sanguíneas viejas o anormales.','Biopsia','Bazo','Interpretación'),
(191,'BF.1','Toma válida para examen.','Biopsia','Feto','Calidad'),
(192,'BF.2','Toma válida para examen aunque limitada por tamaño del feto.','Biopsia','Feto','Calidad'),
(193,'BF.3','Toma válida para examen aunque limitada por artefactos de\nprocesamiento.','Biopsia','Feto','Calidad'),
(194,'BF.4','Toma válida para examen aunque limitada por deterioro del tejido fetal.','Biopsia','Feto','Calidad'),
(195,'BF.5','Toma válida para examen aunque limitada por presencia de líquido\namniótico.','Biopsia','Feto','Calidad'),
(196,'BF.6','Toma no valorable por desecación.','Biopsia','Feto','Calidad'),
(197,'BF.7','Toma no valorable por ausencia de tejido fetal.','Biopsia','Feto','Calidad'),
(198,'11.1','Presencia de tejido fetal bien desarrollado.','Biopsia','Feto','Interpretación'),
(199,'11.2','Presencia de órganos internos correctamente formados.','Biopsia','Feto','Interpretación'),
(200,'11.3','Presencia de tejido nervioso en desarrollo.','Biopsia','Feto','Interpretación'),
(201,'11.4','Presencia de células sanguíneas en formación.','Biopsia','Feto','Interpretación'),
(202,'11.5','Presencia de huesos en proceso de osificación.','Biopsia','Feto','Interpretación'),
(203,'11.6','Presencia de tejido muscular en desarrollo.','Biopsia','Feto','Interpretación'),
(204,'11.7','Presencia de membranas fetales intactas.','Biopsia','Feto','Interpretación'),
(205,'11.8','Presencia de cordón umbilical sin anomalías evidentes.','Biopsia','Feto','Interpretación'),
(206,'11.9','Presencia de estructuras faciales reconocibles.','Biopsia','Feto','Interpretación'),
(207,'11.10','Presencia de extremidades bien formadas.','Biopsia','Feto','Interpretación'),
(208,'BCB.1','Toma válida para examen.','Biopsia','Cerebro','Calidad'),
(209,'BCB.2','Toma válida para examen aunque limitada por escasez de tejido cerebral.','Biopsia','Cerebro','Calidad'),
(210,'BCB.3','Toma válida para examen aunque limitada por artefactos de procesamiento.','Biopsia','Cerebro','Calidad'),
(211,'BCB.4','Toma válida para examen aunque limitada por hemorragia.','Biopsia','Cerebro','Calidad'),
(212,'BCB.5','Toma válida para examen aunque limitada por necrosis extensa.','Biopsia','Cerebro','Calidad'),
(213,'BCB.6','Toma no valorable por desecación.','Biopsia','Cerebro','Calidad'),
(214,'BCB.7','Toma no valorable por ausencia de tejido cerebral.','Biopsia','Cerebro','Calidad'),
(215,'12.1','Presencia de neuronas.','Biopsia','Cerebro','Interpretación'),
(216,'12.2','Presencia de células gliales.','Biopsia','Cerebro','Interpretación'),
(217,'12.3','Presencia de fibras nerviosas mielinizadas.','Biopsia','Cerebro','Interpretación'),
(218,'12.4','Presencia de fibras nerviosas no mielinizadas.','Biopsia','Cerebro','Interpretación'),
(219,'12.5','Presencia de vasos sanguíneos.','Biopsia','Cerebro','Interpretación'),
(220,'12.6','Presencia de células inflamatorias.','Biopsia','Cerebro','Interpretación'),
(221,'12.7','Presencia de infiltración de células neoplásicas.','Biopsia','Cerebro','Interpretación'),
(222,'12.8','Presencia de cuerpos de inclusión intracelulares.','Biopsia','Cerebro','Interpretación'),
(223,'12.9','Presencia de placas de proteína beta-amiloide.','Biopsia','Cerebro','Interpretación'),
(224,'12.10','Presencia de cuerpos de Lewy.','Biopsia','Cerebro','Interpretación'),
(225,'BL.1','Toma válida para examen.','Biopsia','Lengua','Calidad'),
(226,'BL.2','Toma válida para examen aunque limitada por escasez de tejido lingual.','Biopsia','Lengua','Calidad'),
(227,'BL.3','Toma válida para examen aunque limitada por artefactos de\nprocesamiento.','Biopsia','Lengua','Calidad'),
(228,'BL.4','Toma válida para examen aunque limitada por hemorragia.','Biopsia','Lengua','Calidad'),
(229,'BL.5','Toma válida para examen aunque limitada por presencia de saliva.','Biopsia','Lengua','Calidad'),
(230,'BL.6','Toma no valorable por desecación.','Biopsia','Lengua','Calidad'),
(231,'BL.7','Toma no valorable por ausencia de tejido lingual.','Biopsia','Lengua','Calidad'),
(232,'13.1','Presencia de epitelio escamoso estratificado.','Biopsia','Lengua','Interpretación'),
(233,'13.2','Presencia de papilas gustativas filiformes.','Biopsia','Lengua','Interpretación'),
(234,'13.3','Presencia de papilas gustativas fungiformes.','Biopsia','Lengua','Interpretación'),
(235,'13.4','Presencia de papilas gustativas foliadas.','Biopsia','Lengua','Interpretación'),
(236,'13.5','Presencia de células caliciformes.','Biopsia','Lengua','Interpretación'),
(237,'13.6','Presencia de células basales.','Biopsia','Lengua','Interpretación'),
(238,'13.7','Presencia de células parabasales.','Biopsia','Lengua','Interpretación'),
(239,'13.8','Presencia de células intermedias.','Biopsia','Lengua','Interpretación'),
(240,'13.9','Presencia de células superficiales.','Biopsia','Lengua','Interpretación'),
(241,'13.10','Presencia de células inflamatorias.','Biopsia','Lengua','Interpretación'),
(242,'13.11','Presencia de células de Langerhans.','Biopsia','Lengua','Interpretación'),
(243,'13.12','Presencia de células glandulares.','Biopsia','Lengua','Interpretación'),
(244,'13.13','Presencia de células neoplásicas.','Biopsia','Lengua','Interpretación'),
(245,'13.14','Presencia de células con cambios atípicos.','Biopsia','Lengua','Interpretación'),
(246,'13.15','Presencia de cuerpos extraños.','Biopsia','Lengua','Interpretación'),
(247,'BO.1','Toma válida para examen.','Biopsia','Ovario','Calidad'),
(248,'BO.2','Toma válida para examen aunque limitada por escasez de tejido\novárico.','Biopsia','Ovario','Calidad'),
(249,'BO.3','Toma válida para examen aunque limitada por artefactos de\nprocesamiento.','Biopsia','Ovario','Calidad'),
(250,'BO.4','Toma válida para examen aunque limitada por hemorragia.','Biopsia','Ovario','Calidad'),
(251,'BO.5','Toma válida para examen aunque limitada por necrosis extensa.','Biopsia','Ovario','Calidad'),
(252,'BO.6','Toma no valorable por desecación.','Biopsia','Ovario','Calidad'),
(253,'BO.7','Toma no valorable por ausencia de tejido ovárico.','Biopsia','Ovario','Calidad'),
(254,'14.1','Presencia de folículos primordiales.','Biopsia','Ovario','Interpretación'),
(255,'14.2','Presencia de folículos primarios.','Biopsia','Ovario','Interpretación'),
(256,'14.3','Presencia de folículos secundarios.','Biopsia','Ovario','Interpretación'),
(257,'14.4','Presencia de folículos maduros.','Biopsia','Ovario','Interpretación'),
(258,'14.5','Presencia de células de la granulosa.','Biopsia','Ovario','Interpretación'),
(259,'14.6','Presencia de células de la teca.','Biopsia','Ovario','Interpretación'),
(260,'14.7','Presencia de células lúteas.','Biopsia','Ovario','Interpretación'),
(261,'14.8','Presencia de cuerpos albicans.','Biopsia','Ovario','Interpretación'),
(262,'14.9','Presencia de células intersticiales.','Biopsia','Ovario','Interpretación'),
(263,'14.10','Presencia de células estromales.','Biopsia','Ovario','Interpretación'),
(264,'BTF.1','Toma válida para examen.','Biopsia','Trompas de falopio','Calidad'),
(265,'BTF.2','Toma válida para examen aunque limitada por escasez de tejido\ntubárico.','Biopsia','Trompas de falopio','Calidad'),
(266,'BTF.3','Toma válida para examen aunque limitada por artefactos de\nprocesamiento.','Biopsia','Trompas de falopio','Calidad'),
(267,'BTF.4','Toma válida para examen aunque limitada por hemorragia.','Biopsia','Trompas de falopio','Calidad'),
(268,'BTF.5','Toma válida para examen aunque limitada por presencia de moco\ncervical.','Biopsia','Trompas de falopio','Calidad'),
(269,'BTF.6','Toma no valorable por desecación.','Biopsia','Trompas de falopio','Calidad'),
(270,'BTF.7','Toma no valorable por ausencia de tejido tubárico.','Biopsia','Trompas de falopio','Calidad'),
(271,'15.1','Presencia de epitelio cilíndrico.','Biopsia','Trompas de falopio','Interpretación'),
(272,'15.2','Presencia de células ciliadas.','Biopsia','Trompas de falopio','Interpretación'),
(273,'15.3','Presencia de células secretoras.','Biopsia','Trompas de falopio','Interpretación'),
(274,'15.4','Presencia de células endometriales ectópicas.','Biopsia','Trompas de falopio','Interpretación'),
(275,'15.5','Presencia de células inflamatorias.','Biopsia','Trompas de falopio','Interpretación'),
(276,'15.6','Presencia de células escamosas metaplásicas.','Biopsia','Trompas de falopio','Interpretación'),
(277,'15.7','Presencia de células glandulares atípicas.','Biopsia','Trompas de falopio','Interpretación'),
(278,'15.8','Presencia de células endometriales.','Biopsia','Trompas de falopio','Interpretación'),
(279,'15.9','Presencia de células estromales.','Biopsia','Trompas de falopio','Interpretación'),
(280,'15.10','Presencia de cuerpos extraños.','Biopsia','Trompas de falopio','Interpretación'),
(281,'BPA.1','Toma válida para examen.','Biopsia','Páncreas','Calidad'),
(282,'BPA.2','Toma válida para examen aunque limitada por escasez de tejido\npancreático.','Biopsia','Páncreas','Calidad'),
(283,'BPA.3','Toma válida para examen aunque limitada por artefactos de\nprocesamiento.','Biopsia','Páncreas','Calidad'),
(284,'BPA.4','Toma válida para examen aunque limitada por necrosis extensa.','Biopsia','Páncreas','Calidad'),
(285,'BPA.5','Toma válida para examen aunque limitada por hemorragia.','Biopsia','Páncreas','Calidad'),
(286,'BPA.6','Toma no valorable por desecación.','Biopsia','Páncreas','Calidad'),
(287,'BPA.7','Toma no valorable por ausencia de tejido pancreático.','Biopsia','Páncreas','Calidad'),
(288,'16.1','Presencia de células acinares.','Biopsia','Páncreas','Interpretación'),
(289,'16.2','Presencia de islotes de Langerhans.','Biopsia','Páncreas','Interpretación'),
(290,'16.3','Presencia de células ductales.','Biopsia','Páncreas','Interpretación'),
(291,'16.4','Presencia de infiltración de células inflamatorias.','Biopsia','Páncreas','Interpretación'),
(292,'16.5','Presencia de necrosis focal.','Biopsia','Páncreas','Interpretación'),
(293,'16.6','Presencia de fibrosis intersticial.','Biopsia','Páncreas','Interpretación'),
(294,'16.7','Presencia de células neoplásicas.','Biopsia','Páncreas','Interpretación'),
(295,'16.8','Presencia de cuerpos de inclusión eosinofílicos.','Biopsia','Páncreas','Interpretación'),
(296,'16.9','Presencia de calcificación distrófica.','Biopsia','Páncreas','Interpretación'),
(297,'16.10','Presencia de células adiposas en el estroma.','Biopsia','Páncreas','Interpretación'),
(298,'BPI.1','Toma válida para examen.','Biopsia','Piel','Calidad'),
(299,'BPI.2','Toma válida para examen aunque limitada por ausencia de células\nendocervicales/zona de transición.','Biopsia','Piel','Calidad'),
(300,'BPI.3','Toma válida para examen aunque limitada por hemorragia.','Biopsia','Piel','Calidad'),
(301,'BPI.4','Toma válida para examen aunque limitada por escasez de células.','Biopsia','Piel','Calidad'),
(302,'BPI.5','Toma válida para examen aunque limitada por intensa citólisis.','Biopsia','Piel','Calidad'),
(303,'BPI.6','Toma no valorable por desecación.','Biopsia','Piel','Calidad'),
(304,'BPI.7','Toma no valorable por ausencia de células.','Biopsia','Piel','Calidad'),
(305,'17.1','Predominio de células epiteliales escamosas superficiales.','Biopsia','Piel','Interpretación'),
(306,'17.2','Predominio de células epiteliales escamosas intermedias.','Biopsia','Piel','Interpretación'),
(307,'17.3','Predominio de células epiteliales escamosas parabasales.','Biopsia','Piel','Interpretación'),
(308,'17.4','Poli nucleares neutrófilos.','Biopsia','Piel','Interpretación'),
(309,'17.5','Células metaplásicas inmaduras.','Biopsia','Piel','Interpretación'),
(310,'17.6','Células reactivas.','Biopsia','Piel','Interpretación'),
(311,'17.7','Alteraciones celulares sugerentes de HPV.','Biopsia','Piel','Interpretación'),
(312,'17.8','Alteraciones celulares sugerentes de Herpes.','Biopsia','Piel','Interpretación'),
(313,'17.9','Células neoplásicas.','Biopsia','Piel','Interpretación'),
(314,'17.10','Células superficiales e intermedias con cambios atípicos.','Biopsia','Piel','Interpretación'),
(315,'17.11','Células intermedias y parabasales con algunos cambios atípicos.','Biopsia','Piel','Interpretación'),
(316,'17.12','Células parabasales con algunos cambios atípicos.','Biopsia','Piel','Interpretación'),
(317,'17.13','Células escamosas de significado incierto.','Biopsia','Piel','Interpretación'),
(318,'17.14','Células epiteliales glandulares de significado incierto.','Biopsia','Piel','Interpretación');
/*!40000 ALTER TABLE `api_codificacioninterpretacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_estado`
--

DROP TABLE IF EXISTS `api_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_estado` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `estado` varchar(20) NOT NULL,
  `comentario` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `estado` (`estado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_estado`
--

LOCK TABLES `api_estado` WRITE;
/*!40000 ALTER TABLE `api_estado` DISABLE KEYS */;
INSERT INTO `api_estado` VALUES
(1,'No validado',NULL),
(2,'Validado',NULL),
(3,'Pendiente',NULL);
/*!40000 ALTER TABLE `api_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_formato`
--

DROP TABLE IF EXISTS `api_formato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_formato` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `formato` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `formato` (`formato`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_formato`
--

LOCK TABLES `api_formato` WRITE;
/*!40000 ALTER TABLE `api_formato` DISABLE KEYS */;
INSERT INTO `api_formato` VALUES
(1,'Etanol 70%'),
(2,'Formol'),
(3,'Fresco');
/*!40000 ALTER TABLE `api_formato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_imagen`
--

DROP TABLE IF EXISTS `api_imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_imagen` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `imagen` varchar(100) NOT NULL,
  `zoom` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_imagen_zoom_650602df_fk_api_aumento_zoom` (`zoom`),
  CONSTRAINT `api_imagen_zoom_650602df_fk_api_aumento_zoom` FOREIGN KEY (`zoom`) REFERENCES `api_aumento` (`zoom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_imagen`
--

LOCK TABLES `api_imagen` WRITE;
/*!40000 ALTER TABLE `api_imagen` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_muestra`
--

DROP TABLE IF EXISTS `api_muestra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_muestra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_recepcion` date NOT NULL,
  `estado` varchar(20) NOT NULL,
  `formato` varchar(20) NOT NULL,
  `username` varchar(150) NOT NULL,
  `naturaleza` varchar(2) NOT NULL,
  `organo` varchar(30) NOT NULL,
  `sede` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_muestra_estado_006685b9_fk_api_estado_estado` (`estado`),
  KEY `api_muestra_formato_631a6d92_fk_api_formato_formato` (`formato`),
  KEY `api_muestra_naturaleza_75d97783_fk_api_naturaleza_codigo` (`naturaleza`),
  KEY `api_muestra_organo_f2649ab5_fk_api_organo_organo` (`organo`),
  KEY `api_muestra_sede_970081c7_fk_api_sede_codigo` (`sede`),
  KEY `api_muestra_username_92f0da14_fk` (`username`),
  CONSTRAINT `api_muestra_estado_006685b9_fk_api_estado_estado` FOREIGN KEY (`estado`) REFERENCES `api_estado` (`estado`),
  CONSTRAINT `api_muestra_formato_631a6d92_fk_api_formato_formato` FOREIGN KEY (`formato`) REFERENCES `api_formato` (`formato`),
  CONSTRAINT `api_muestra_naturaleza_75d97783_fk_api_naturaleza_codigo` FOREIGN KEY (`naturaleza`) REFERENCES `api_naturaleza` (`codigo`),
  CONSTRAINT `api_muestra_organo_f2649ab5_fk_api_organo_organo` FOREIGN KEY (`organo`) REFERENCES `api_organo` (`organo`),
  CONSTRAINT `api_muestra_sede_970081c7_fk_api_sede_codigo` FOREIGN KEY (`sede`) REFERENCES `api_sede` (`codigo`),
  CONSTRAINT `api_muestra_username_92f0da14_fk` FOREIGN KEY (`username`) REFERENCES `auth_user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_muestra`
--

LOCK TABLES `api_muestra` WRITE;
/*!40000 ALTER TABLE `api_muestra` DISABLE KEYS */;
INSERT INTO `api_muestra` VALUES
(3,'2024-06-02','No validado','Etanol 70%','kenpachi','B','Corazón','C');
/*!40000 ALTER TABLE `api_muestra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_naturaleza`
--

DROP TABLE IF EXISTS `api_naturaleza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_naturaleza` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codigo` varchar(2) NOT NULL,
  `naturaleza` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`),
  UNIQUE KEY `naturaleza` (`naturaleza`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_naturaleza`
--

LOCK TABLES `api_naturaleza` WRITE;
/*!40000 ALTER TABLE `api_naturaleza` DISABLE KEYS */;
INSERT INTO `api_naturaleza` VALUES
(1,'B','Biopsia'),
(2,'BV','Biopsias veterinarias'),
(3,'CB','Cavidad bucal'),
(4,'CV','Citología vaginal'),
(5,'EX','Extensión sanguínea'),
(6,'O','Orinas'),
(7,'E','Esputos'),
(8,'ES','Semen'),
(9,'ID','Improntas'),
(10,'F','Frotis');
/*!40000 ALTER TABLE `api_naturaleza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_organo`
--

DROP TABLE IF EXISTS `api_organo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_organo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `organo` varchar(30) NOT NULL,
  `codigo` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `organo` (`organo`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_organo`
--

LOCK TABLES `api_organo` WRITE;
/*!40000 ALTER TABLE `api_organo` DISABLE KEYS */;
INSERT INTO `api_organo` VALUES
(1,'Corazón','BC'),
(2,'Hígado','BH'),
(3,'Estómago','BES'),
(4,'Riñón','BR'),
(5,'Útero','BU'),
(6,'Intestino','BI'),
(7,'Esófago','BEF'),
(8,'Testículos','BT'),
(9,'Pulmón','BP'),
(10,'Bazo','BB'),
(11,'Feto','BF'),
(12,'Cerebro','BCB'),
(13,'Lengua','BL'),
(14,'Ovario','BO'),
(15,'Trompas de falopio','BTF'),
(16,'Páncreas','BPA'),
(17,'Piel','BPI');
/*!40000 ALTER TABLE `api_organo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_sede`
--

DROP TABLE IF EXISTS `api_sede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_sede` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sede` varchar(11) NOT NULL,
  `codigo` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sede` (`sede`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_sede`
--

LOCK TABLES `api_sede` WRITE;
/*!40000 ALTER TABLE `api_sede` DISABLE KEYS */;
INSERT INTO `api_sede` VALUES
(1,'Albacete','A'),
(2,'Alicante','AL'),
(3,'Alicante II','ALII'),
(4,'Almería','I'),
(5,'Córdoba','C'),
(6,'Leganés','L'),
(7,'Granada','G'),
(8,'Huelva','H'),
(9,'Jerez','J'),
(10,'Madrid','M'),
(11,'Málaga','MG'),
(12,'Murcia','MU'),
(13,'Sevilla','S'),
(14,'Valencia','V'),
(15,'Zaragoza','Z'),
(17,'Madrid II','MII');
/*!40000 ALTER TABLE `api_sede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_tipo`
--

DROP TABLE IF EXISTS `api_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_tipo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo` varchar(14) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tipo` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_tipo`
--

LOCK TABLES `api_tipo` WRITE;
/*!40000 ALTER TABLE `api_tipo` DISABLE KEYS */;
INSERT INTO `api_tipo` VALUES
(1,'Calidad'),
(2,'Interpretación');
/*!40000 ALTER TABLE `api_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add aumento',7,'add_aumento'),
(26,'Can change aumento',7,'change_aumento'),
(27,'Can delete aumento',7,'delete_aumento'),
(28,'Can view aumento',7,'view_aumento'),
(29,'Can add estado',8,'add_estado'),
(30,'Can change estado',8,'change_estado'),
(31,'Can delete estado',8,'delete_estado'),
(32,'Can view estado',8,'view_estado'),
(33,'Can add formato',9,'add_formato'),
(34,'Can change formato',9,'change_formato'),
(35,'Can delete formato',9,'delete_formato'),
(36,'Can view formato',9,'view_formato'),
(37,'Can add naturaleza',10,'add_naturaleza'),
(38,'Can change naturaleza',10,'change_naturaleza'),
(39,'Can delete naturaleza',10,'delete_naturaleza'),
(40,'Can view naturaleza',10,'view_naturaleza'),
(41,'Can add organo',11,'add_organo'),
(42,'Can change organo',11,'change_organo'),
(43,'Can delete organo',11,'delete_organo'),
(44,'Can view organo',11,'view_organo'),
(45,'Can add sede',12,'add_sede'),
(46,'Can change sede',12,'change_sede'),
(47,'Can delete sede',12,'delete_sede'),
(48,'Can view sede',12,'view_sede'),
(49,'Can add tipo',13,'add_tipo'),
(50,'Can change tipo',13,'change_tipo'),
(51,'Can delete tipo',13,'delete_tipo'),
(52,'Can view tipo',13,'view_tipo'),
(53,'Can add Imagen',14,'add_imagen'),
(54,'Can change Imagen',14,'change_imagen'),
(55,'Can delete Imagen',14,'delete_imagen'),
(56,'Can view Imagen',14,'view_imagen'),
(57,'Can add muestra',15,'add_muestra'),
(58,'Can change muestra',15,'change_muestra'),
(59,'Can delete muestra',15,'delete_muestra'),
(60,'Can view muestra',15,'view_muestra'),
(61,'Can add Codificación de Interpretación',16,'add_codificacioninterpretacion'),
(62,'Can change Codificación de Interpretación',16,'change_codificacioninterpretacion'),
(63,'Can delete Codificación de Interpretación',16,'delete_codificacioninterpretacion'),
(64,'Can view Codificación de Interpretación',16,'view_codificacioninterpretacion');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES
(1,'pbkdf2_sha256$720000$7gX5pgLNhukPaFVU3rjawY$DjNpPJi/uSJQBzHUxxxk0JuJMo7fKnOEd1/5P+lmgh4=','2024-05-28 17:28:32.119985',1,'admin','','','admin@admin.admin',1,1,'2024-05-28 14:57:47.087804'),
(2,'pbkdf2_sha256$720000$VYx3iFDritkBGkn4oLVOtr$VePwFU5/P+pf7xgOJx8ihv71akGwIaspICyyvaqSTZ8=',NULL,0,'kenpachi','','','',0,1,'2024-05-28 17:30:51.181537'),
(3,'pbkdf2_sha256$720000$HAE4KNYWMpSsErkqNjKqKh$f0cQ29F3kmKEEuahDs2xPcP7TYqCA81aiUMfgkLVpFA=',NULL,0,'battosai','','','',0,1,'2024-05-28 18:02:54.371425'),
(4,'pbkdf2_sha256$720000$e0yL9GYXrVddglflH39tjO$BN+FGcPAsEls0Iu7Mg3CSs4JQZszEgldOnhUIpTti6c=',NULL,0,'hitokiri','','','',0,1,'2024-05-28 18:54:09.720672'),
(5,'pbkdf2_sha256$720000$zW7oEOrjPBNz781bl2MdbN$UsYkRKZz7orkOJRctWaGSk5JF25JhBPT1HsrR/y/e2s=',NULL,0,'picolo','','','',0,1,'2024-05-29 17:44:01.482811');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES
(1,'2024-05-28 17:30:52.573680','2','kenpachi',1,'[{\"added\": {}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(7,'api','aumento'),
(16,'api','codificacioninterpretacion'),
(8,'api','estado'),
(9,'api','formato'),
(14,'api','imagen'),
(15,'api','muestra'),
(10,'api','naturaleza'),
(11,'api','organo'),
(12,'api','sede'),
(13,'api','tipo'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2024-05-28 14:57:11.430354'),
(2,'auth','0001_initial','2024-05-28 14:57:13.159897'),
(3,'admin','0001_initial','2024-05-28 14:57:13.585164'),
(4,'admin','0002_logentry_remove_auto_add','2024-05-28 14:57:13.615426'),
(5,'admin','0003_logentry_add_action_flag_choices','2024-05-28 14:57:13.640225'),
(6,'api','0001_initial','2024-05-28 14:57:16.460633'),
(7,'contenttypes','0002_remove_content_type_name','2024-05-28 14:57:16.675416'),
(8,'auth','0002_alter_permission_name_max_length','2024-05-28 14:57:16.892164'),
(9,'auth','0003_alter_user_email_max_length','2024-05-28 14:57:16.963507'),
(10,'auth','0004_alter_user_username_opts','2024-05-28 14:57:16.998332'),
(11,'auth','0005_alter_user_last_login_null','2024-05-28 14:57:17.161838'),
(12,'auth','0006_require_contenttypes_0002','2024-05-28 14:57:17.171452'),
(13,'auth','0007_alter_validators_add_error_messages','2024-05-28 14:57:17.202953'),
(14,'auth','0008_alter_user_username_max_length','2024-05-28 14:57:17.941398'),
(15,'auth','0009_alter_user_last_name_max_length','2024-05-28 14:57:18.125121'),
(16,'auth','0010_alter_group_name_max_length','2024-05-28 14:57:18.189683'),
(17,'auth','0011_update_proxy_permissions','2024-05-28 14:57:18.224906'),
(18,'auth','0012_alter_user_first_name_max_length','2024-05-28 14:57:18.415915'),
(19,'sessions','0001_initial','2024-05-28 14:57:18.532802'),
(20,'api','0002_alter_muestra_fecha_recepcion','2024-05-28 15:21:38.186412');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES
('xruk5lkiqux962sa5yj4u0m0fungu3fs','.eJxVjLEOgzAMRP8lcxXZmBDRsXu_IXJi09BWIBGYUP-9RGJop5PuvbvdBN7WHLaiSxjFXA2ay28XOb10qkCePD1mm-ZpXcZoq2JPWux9Fn3fTvfvIHPJx7pDblCAEwytJA-CbiCkPnaNkgIREygJgfeOPTY11fWHwuigdebzBcvmNoM:1sC0ci:704NOtr_3bonYRSO5JNHLN-54GLKVB2exKsvu7WSPfA','2024-06-11 17:28:32.140725');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-29 17:46:31