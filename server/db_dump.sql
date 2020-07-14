-- MySQL dump 10.16  Distrib 10.1.35-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: ozomMarket
-- ------------------------------------------------------
-- Server version	10.1.35-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Create DATABASE
--

CREATE DATABASE IF NOT EXISTS `ozomMarket`;
USE `ozomMarket`;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Apple',NULL,NULL),(2,'Microsoft',NULL,NULL),(3,'Asus',NULL,NULL),(4,'BGH',NULL,NULL),(5,'Dell',NULL,NULL);
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartProduct`
--

DROP TABLE IF EXISTS `cartProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartProduct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productId` int(10) unsigned DEFAULT NULL,
  `cartId` int(10) unsigned DEFAULT NULL,
  `productPrice` decimal(8,2) DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  KEY `cartId` (`cartId`),
  CONSTRAINT `cartproduct_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  CONSTRAINT `cartproduct_ibfk_2` FOREIGN KEY (`cartId`) REFERENCES `carts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartProduct`
--

LOCK TABLES `cartProduct` WRITE;
/*!40000 ALTER TABLE `cartProduct` DISABLE KEYS */;
INSERT INTO `cartProduct` VALUES (1,28,7,50.50,2,'2020-03-13 19:28:03','2020-03-13 19:28:03'),(2,11,7,10.10,3,'2020-03-13 19:28:03','2020-03-13 19:28:03'),(3,30,7,100.10,4,'2020-03-13 19:28:03','2020-03-13 19:28:03'),(4,28,8,NULL,NULL,'2020-03-13 19:31:24','2020-03-13 19:31:24'),(5,11,8,NULL,NULL,'2020-03-13 19:31:24','2020-03-13 19:31:24'),(6,30,8,NULL,NULL,'2020-03-13 19:31:24','2020-03-13 19:31:24'),(7,28,9,50.50,2,'2020-03-13 19:32:43','2020-03-13 19:32:43'),(8,11,9,10.10,3,'2020-03-13 19:32:43','2020-03-13 19:32:43'),(9,30,9,100.10,4,'2020-03-13 19:32:43','2020-03-13 19:32:43'),(10,28,10,50.50,2,'2020-05-29 17:10:27','2020-05-29 17:10:27'),(11,11,10,10.10,3,'2020-05-29 17:10:27','2020-05-29 17:10:27'),(12,30,10,100.10,4,'2020-05-29 17:10:27','2020-05-29 17:10:27'),(16,13,12,NULL,NULL,'2020-05-29 17:12:27','2020-05-29 17:12:27'),(17,10,12,NULL,NULL,'2020-05-29 17:12:27','2020-05-29 17:12:27'),(18,8,12,NULL,NULL,'2020-05-29 17:12:27','2020-05-29 17:12:27'),(19,1,13,NULL,NULL,'2020-05-29 17:13:12','2020-05-29 17:13:12'),(20,6,13,NULL,NULL,'2020-05-29 17:13:12','2020-05-29 17:13:12'),(21,9,13,NULL,NULL,'2020-05-29 17:13:12','2020-05-29 17:13:12'),(22,1,14,NULL,2,'2020-05-29 17:15:20','2020-05-29 17:15:20'),(23,6,14,NULL,3,'2020-05-29 17:15:20','2020-05-29 17:15:20'),(24,9,14,NULL,4,'2020-05-29 17:15:20','2020-05-29 17:15:20'),(25,1,15,50.50,2,'2020-05-29 17:15:48','2020-05-29 17:15:48'),(26,6,15,10.10,3,'2020-05-29 17:15:48','2020-05-29 17:15:48'),(27,9,15,100.10,4,'2020-05-29 17:15:48','2020-05-29 17:15:48'),(28,1,16,50.50,2,'2020-05-29 17:21:41','2020-05-29 17:24:08'),(29,6,16,100.10,3,'2020-05-29 17:21:41','2020-05-29 17:24:08'),(30,9,16,100.10,4,'2020-05-29 17:21:41','2020-05-29 17:23:05'),(31,19,16,10.10,4,'2020-05-29 17:23:47','2020-05-29 17:24:08');
/*!40000 ALTER TABLE `cartProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userId` int(10) unsigned DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,'1584119393171-cart',1,'2020-03-13 17:09:53','2020-03-13 17:09:53'),(2,'1584120120563-cart',1,'2020-03-13 17:22:00','2020-03-13 17:22:00'),(3,'1584120605426-cart',1,'2020-03-13 17:30:05','2020-03-13 17:30:05'),(4,'1584120641235-cart',1,'2020-03-13 17:30:41','2020-03-13 17:30:41'),(5,'1584120643473-cart',1,'2020-03-13 17:30:43','2020-03-13 17:30:43'),(6,'1584121032775-cart',1,'2020-03-13 17:37:12','2020-03-13 17:37:12'),(7,'1584127683190-cart',1,'2020-03-13 19:28:03','2020-03-13 19:28:03'),(8,'1584127884861-cart',1,'2020-03-13 19:31:24','2020-03-13 19:31:24'),(9,'1584127963613-cart',1,'2020-03-13 19:32:43','2020-03-13 19:32:43'),(10,'1590772227064-cart',3,'2020-05-29 17:10:27','2020-05-29 17:10:27'),(11,'1590772329861-cart',2,'2020-05-29 17:12:09','2020-05-29 17:12:09'),(12,'1590772347688-cart',2,'2020-05-29 17:12:27','2020-05-29 17:12:27'),(13,'1590772392085-cart',2,'2020-05-29 17:13:12','2020-05-29 17:13:12'),(14,'1590772520755-cart',2,'2020-05-29 17:15:20','2020-05-29 17:15:20'),(15,'1590772548479-cart',2,'2020-05-29 17:15:48','2020-05-29 17:15:48'),(16,'1590772901618-cart',2,'2020-05-29 17:21:41','2020-05-29 17:21:41');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Desktop computers',NULL,NULL),(2,'Laptops',NULL,NULL),(3,'Tablets',NULL,NULL),(4,'Cellphones',NULL,NULL),(5,'Tv sets',NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoryProduct`
--

DROP TABLE IF EXISTS `categoryProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoryProduct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productId` int(10) unsigned DEFAULT NULL,
  `categoryId` int(10) unsigned DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `categoryproduct_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  CONSTRAINT `categoryproduct_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoryProduct`
--

LOCK TABLES `categoryProduct` WRITE;
/*!40000 ALTER TABLE `categoryProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoryProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colorProduct`
--

DROP TABLE IF EXISTS `colorProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colorProduct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productId` int(10) unsigned DEFAULT NULL,
  `colorId` int(10) unsigned DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  KEY `colorId` (`colorId`),
  CONSTRAINT `colorproduct_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  CONSTRAINT `colorproduct_ibfk_2` FOREIGN KEY (`colorId`) REFERENCES `colors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colorProduct`
--

LOCK TABLES `colorProduct` WRITE;
/*!40000 ALTER TABLE `colorProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `colorProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'yellow',NULL,NULL),(2,'blue',NULL,NULL),(3,'red',NULL,NULL),(4,'white',NULL,NULL),(5,'black',NULL,NULL);
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no-image.png',
  `description` text COLLATE utf8_unicode_ci,
  `brandId` int(10) unsigned DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brandId` (`brandId`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brandId`) REFERENCES `brands` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Rustic Steel Mouse',412.00,'https://placeimg.com/640/480/people','Impedit a a assumenda unde hic unde sunt. Autem veniam sed in. Autem corporis minima nihil voluptatem est inventore modi. Nemo quia cum ut dolorum. Tempora quam at delectus voluptatem sit.\n \rOdit non voluptatem quia. Voluptas pariatur veritatis laudantium. Eligendi placeat facere. Natus velit distinctio quae ut facilis consectetur in ut quo.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(2,'Intelligent Concrete Soap',418.00,'https://placeimg.com/640/480/architecture','Adipisci quidem modi veniam vero odio dolore. Vel sed rem magnam sunt et sit molestiae. Unde corrupti sed ea et. Soluta illo sit quisquam porro dolores impedit. Officiis qui et molestiae rerum maiores. Aut saepe eligendi.\n \rEst qui quo aliquid quis velit iure. Dolorem adipisci voluptas vero nesciunt quis quis. Id blanditiis adipisci quia incidunt reiciendis rem deserunt tempore. Officia unde et facere sit ut eaque. Voluptatibus animi blanditiis dolor et dolores eius quasi aut.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(3,'Refined Steel Table',416.00,'https://placeimg.com/640/480/animals','In ad aliquid et consequatur. Nam aliquam et possimus in dolores exercitationem assumenda similique corporis. Est ullam corporis et. Accusamus iure quo autem sunt eos id soluta ratione similique. Facere recusandae blanditiis repellat beatae omnis.\n \rQuia labore cum alias officiis. Sequi rem occaecati praesentium asperiores. Odit harum ratione eaque id. Autem tempore ut quasi a expedita nemo exercitationem sit. Laudantium molestiae alias porro aspernatur et placeat earum ut.',2,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(4,'Fantastic Cotton Towels',704.00,'https://placeimg.com/640/480/architecture','Ullam officia quas quasi. Et consequatur voluptate id asperiores. Est asperiores quisquam facilis vel hic eos. Est repellendus est sint facilis quidem qui.\n \rNumquam natus repellat est deserunt tempora aperiam autem sint. Neque officia dicta. Atque qui illum tempore laboriosam.',3,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(5,'Licensed Metal Chicken',68.00,'https://placeimg.com/640/480/architecture','Voluptatem exercitationem est culpa et ea nihil rerum. Aliquam distinctio non iure. Illum possimus quasi blanditiis voluptatem et voluptatem adipisci architecto. Vel quam libero sit fugiat omnis. Accusantium nobis sed iure tempora ut ut dolores quo error.\n \rOccaecati quisquam qui dolorem quaerat. Dolor qui aperiam optio sequi ut consequatur. Nisi consequatur impedit qui voluptate omnis soluta vel.',2,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(6,'Handcrafted Soft Pizza',649.00,'https://placeimg.com/640/480/nature','Vero tempore quia iste enim et aut. Recusandae quia dolor. Earum quaerat cum laboriosam ratione praesentium et vel accusamus est. Iste est recusandae sed.\n \rMollitia perferendis sit iste. Ad sed quos rem iste est reprehenderit sed quis soluta. Deleniti facilis quisquam consequuntur ex quasi dolor fugiat quia nulla. Quod tempore praesentium qui libero aut ut dolores. Molestiae ut soluta. Nesciunt in quis.',3,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(7,'Intelligent Concrete Bacon',875.00,'https://placeimg.com/640/480/nature','Commodi deserunt ad enim et. Est sequi ullam. Eligendi qui beatae non unde officia.\n \rQuo assumenda ut eum iure. Consequatur quaerat non vitae. Minus labore velit et sint quam maiores cum nisi velit.',2,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(8,'Refined Concrete Car',353.00,'https://placeimg.com/640/480/animals','Dolore dignissimos ipsum deserunt pariatur eos inventore voluptatem earum. Similique dolorem eos sed maxime est. Asperiores at blanditiis dolorem sed doloremque optio quibusdam nobis voluptatibus.\n \rQuo autem accusantium quod odit eos exercitationem facere. Voluptatem non accusamus ratione consectetur facilis est voluptas nihil placeat. Fuga libero omnis. Sit incidunt tempore iure soluta animi est inventore sapiente.',2,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(9,'Intelligent Concrete Hat',714.00,'https://placeimg.com/640/480/people','Voluptatibus quaerat beatae. Dolores possimus quod ratione dolor sed. Ratione quasi ad quia harum recusandae officiis illum. Et quos possimus est delectus aspernatur atque.\n \rFuga sed ipsa at vero id enim ratione incidunt. Dolorem incidunt consequatur ullam sed atque ipsa suscipit ipsa cumque. Aut earum numquam dolor voluptatem id ipsum eos. Ipsum saepe rem.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(10,'Awesome Cotton Car',91.00,'https://placeimg.com/640/480/architecture','Impedit excepturi quibusdam. Consequatur sint velit. Amet odio nulla quia atque tenetur rerum. Ab fugiat a fugiat excepturi sunt dolorum aut omnis aut. Sit eum incidunt enim esse maxime rem enim autem officiis. Nobis velit esse similique eos facere iusto quibusdam.\n \rEsse in dignissimos quae quia provident mollitia eius sed nisi. Ea nobis aspernatur ut porro et omnis assumenda officiis. Ducimus ea eum et quam et animi. Animi laborum aut quam aperiam adipisci sunt occaecati voluptatum. Sed ipsam autem quia quam. Eaque sed a dolor et expedita eos non voluptate aut.',2,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(11,'Handcrafted Plastic Soap',148.00,'https://placeimg.com/640/480/tech','Doloribus est dolores repellat illo. Rerum dignissimos ut. Itaque possimus quis aut inventore. Explicabo magnam eos praesentium minus. Dolorum doloribus voluptate officia est quae commodi esse qui.\n \rQuibusdam expedita quos velit nihil ut nihil quas. Ut aut maiores voluptatem eum nemo et. Adipisci qui magni quis repudiandae illo dolore rerum rerum aut.',2,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(12,'Small Cotton Tuna',43.00,'https://placeimg.com/640/480/animals','Similique voluptas iusto quam ea ut minima. Vel ipsa et tempore nobis repellendus. Reprehenderit deserunt ratione quam voluptatum praesentium. Expedita eum eos cumque in occaecati aut. Sequi qui voluptas a quod enim dolorem et. Omnis rerum doloribus rerum explicabo quos sit blanditiis dolorem.\n \rMagnam praesentium amet. Et iure vel totam est ut. Doloremque et eos quisquam quibusdam consequatur aperiam ut placeat. Maxime iste molestias distinctio dolorem consequatur consequatur occaecati. Id qui eos rem et omnis. Dolor animi suscipit animi.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(13,'Handcrafted Metal Fish',650.00,'https://placeimg.com/640/480/people','Praesentium beatae voluptates rerum sunt ut. Eos corrupti quis nesciunt sapiente iusto accusamus eos. Accusamus est et ut quasi quia iste fuga eligendi et. Praesentium ad magni et eos voluptate optio numquam. Ex eum et sequi et. Magnam et aut velit excepturi.\n \rIste doloremque eveniet itaque omnis iure. Harum et porro est odit accusamus non quos voluptas. Labore autem quaerat id sed placeat.',5,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(14,'Rustic Rubber Pants',398.00,'https://placeimg.com/640/480/tech','Non deserunt possimus occaecati accusamus harum. Occaecati voluptatem quod laboriosam occaecati exercitationem. Quis et voluptatum voluptas molestiae quo aut maiores libero labore. Minus natus praesentium labore dolore inventore nihil voluptates.\n \rInventore molestiae velit aliquam. Quia neque sit possimus accusantium consectetur omnis quis aut dolores. Nulla consequatur iure eum eum facere. Delectus accusamus tenetur voluptatem doloremque enim explicabo voluptatem facere. Fugiat est vel voluptatem vitae ut.',4,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(15,'Practical Steel Pizza',923.00,'https://placeimg.com/640/480/architecture','Deserunt expedita sed ut repudiandae. Fugit consectetur debitis. Aperiam nulla eum eligendi ut consequatur nam omnis. Dolorem qui id optio ducimus. Non sint in animi id id occaecati.\n \rDicta non similique. Omnis distinctio laudantium ea suscipit in tenetur pariatur dolor eos. Esse culpa aut fuga ab eum. Minus consequatur ut dolores est. Facilis sunt molestias odio. Et praesentium harum sit modi aut dolore.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(16,'Licensed Plastic Computer',482.00,'https://placeimg.com/640/480/nature','Ea suscipit et maiores itaque ut quas. Magnam consequatur corporis hic amet. Eligendi accusamus adipisci rerum earum aliquid eveniet. Aut et dolore quas molestiae.\n \rRerum a nulla praesentium. Eum omnis reiciendis et inventore laudantium ducimus sit velit ipsam. Ut quos sed ratione sint et. Fugiat et aliquid deleniti autem sint rem sit. Fugit maxime eos non facilis in placeat officia ratione ipsa.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(17,'Rustic Soft Cheese',768.00,'https://placeimg.com/640/480/nature','Voluptatem vel doloremque illum cupiditate repellat sint. Laborum sit et. Qui et non et illo optio similique non facere ipsum. Neque perferendis illum impedit omnis. Dolores quis eum dolorum non sit dignissimos doloremque. Enim quae excepturi.\n \rVoluptatem facere id inventore eum. Consequuntur harum nisi. Possimus veniam magni nesciunt libero dolore sequi vel ab.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(18,'Tasty Fresh Table',788.00,'https://placeimg.com/640/480/tech','Et voluptas excepturi. Expedita id suscipit non nostrum. At hic earum reiciendis quia. Nemo fugiat dolor officiis harum perspiciatis.\n \rDoloribus rem aliquam eveniet et possimus dolores et dolore accusantium. Laudantium blanditiis eum et dolorem exercitationem non. Sed sunt sunt quisquam ipsa. Et aut accusamus non exercitationem qui nostrum dolorum.',2,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(19,'Generic Frozen Sausages',486.00,'https://placeimg.com/640/480/tech','Reiciendis officiis voluptas quo fugit qui id blanditiis aut. Ut rem saepe numquam. Corrupti commodi suscipit in.\n \rAut voluptatem aliquam placeat incidunt dignissimos deserunt ipsam. Necessitatibus dolores suscipit voluptas sequi commodi accusantium voluptatem modi omnis. Facilis voluptatum numquam vel consequatur temporibus quo aperiam aut aspernatur.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(20,'Small Steel Salad',781.00,'https://placeimg.com/640/480/people','Consequatur quia aut est. A alias non voluptas officia sequi sint aliquam voluptate. Rerum perferendis voluptates facere aut et minus et vel ipsum. Asperiores accusamus accusantium eligendi vero laborum qui. Vel quasi dolor velit omnis possimus. Qui nihil expedita voluptatibus ut iste accusamus possimus harum.\n \rMolestiae est dolor voluptatem odit ad hic. Quasi quod neque aperiam eum ut ab. Ut perspiciatis tenetur animi.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(21,'Licensed Cotton Table',907.00,'https://placeimg.com/640/480/nature','Culpa adipisci illum ea corporis. Alias occaecati in ut dolor in. Harum aut fugiat. Suscipit velit nostrum sint sit eaque. Ut esse officiis. Provident reiciendis nihil eum vitae.\n \rAut error eveniet veniam. Praesentium sed libero laboriosam tenetur ut. Esse et expedita. Corporis qui eos qui eos quas quam voluptatum aspernatur.',4,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(22,'Ergonomic Plastic Computer',213.00,'https://placeimg.com/640/480/tech','Aspernatur facere vero. Dolores deserunt recusandae sit. Voluptas soluta et. Repudiandae autem adipisci impedit nemo minima enim et et placeat. Et eveniet accusantium.\n \rOmnis rerum accusantium et. Dolor quisquam et repudiandae quibusdam aut rerum rerum quia. Modi amet aspernatur.',4,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(23,'Incredible Fresh Tuna',863.00,'https://placeimg.com/640/480/animals','Saepe ea sint laborum quam est ullam. Qui ea dignissimos enim inventore pariatur sunt possimus quae. Voluptatem iure labore eius et cumque voluptatem est. Ratione et facere consequuntur ducimus sed ad veritatis praesentium et. In debitis inventore nulla deleniti mollitia vitae iusto.\n \rAt ut incidunt eum unde magnam veniam dolorem. Maiores ea aut est. Iusto commodi ipsa. Harum aspernatur quas tempore et vel exercitationem laborum quis ut. Quas libero pariatur magnam iusto pariatur.',2,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(24,'Fantastic Concrete Ball',269.00,'https://placeimg.com/640/480/nature','Rem quae repellat ea atque qui reprehenderit vel. Maxime saepe ut doloribus quia veniam sunt. Deserunt eos officiis doloribus quibusdam voluptate at.\n \rConsequatur quo occaecati ut inventore. Velit earum eum et aut magni non consectetur non. Qui deleniti eius dolores aut. Itaque nam mollitia optio consequatur rerum qui dolor. Impedit fugiat atque iusto ut est omnis. Facere qui placeat.',2,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(25,'Handcrafted Metal Hat',309.00,'https://placeimg.com/640/480/tech','Cum ut aliquid dignissimos et omnis consequatur non. Molestias quaerat molestiae nulla. Eum dolorem et est provident. Ad praesentium delectus quidem. Facilis expedita sed omnis. Aspernatur quae occaecati molestiae quaerat cupiditate nulla quia.\n \rEst nobis quos ut ut. Laudantium pariatur beatae. Eveniet unde nemo odit suscipit rerum rem repellendus voluptas. Expedita cupiditate fuga sapiente ipsum. Fuga id qui consectetur omnis vel ea voluptatem quos.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(26,'Sleek Plastic Gloves',7.00,'https://placeimg.com/640/480/nature','Et saepe alias debitis voluptatem. Fuga quam reiciendis perferendis nulla aut. Harum id rem. Inventore possimus rerum voluptas nemo at in sint et minima. Aut deleniti nobis rerum ea. Voluptatum omnis dolorem accusamus assumenda id.\n \rDolorem error magni hic aliquam incidunt provident quae mollitia. Esse sed harum et et fugit ratione dolor. Magnam impedit rerum perferendis molestias doloribus aut hic.',5,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(27,'Tasty Fresh Hat',442.00,'https://placeimg.com/640/480/people','Omnis et velit. Culpa quia illum. Reprehenderit amet quis.\n \rEx quos consequatur dignissimos quisquam ab voluptates omnis omnis rem. Tempore praesentium dolores autem harum rerum veritatis. Recusandae dicta alias maiores consequatur sunt aliquid asperiores expedita. Sint recusandae excepturi qui est repudiandae adipisci qui ut. Tempora doloribus corrupti quidem vel sint ex ut beatae.',3,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(28,'Handcrafted Rubber Gloves',379.00,'https://placeimg.com/640/480/nature','Ab fugit reprehenderit. Illum autem laudantium ut hic ipsa qui modi. Autem dolorem laboriosam sunt quidem sint vel. Sapiente quibusdam nisi qui et.\n \rQuidem modi non quo. Veniam rerum quasi voluptatum impedit et. Accusamus quidem molestiae dignissimos necessitatibus et nemo quibusdam recusandae eum. Aliquam ducimus voluptas impedit et id qui doloribus.',5,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(29,'Ergonomic Metal Mouse',867.00,'https://placeimg.com/640/480/nature','Qui laudantium qui vitae ut. Est maxime sequi quod. Omnis molestiae non velit alias quas est ut. Libero reprehenderit consequatur. Nulla dolores voluptatibus voluptatum in fugit fuga.\n \rHarum blanditiis dignissimos. Pariatur eos voluptatibus est eius hic fugit fuga libero dolorem. Aperiam voluptatem et. Accusamus ipsam aut quia aut aliquid. Sit ipsa eos ex accusamus aut. Neque aut voluptatem corporis sapiente ratione adipisci qui qui officiis.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(30,'Handcrafted Concrete Chicken',929.00,'https://placeimg.com/640/480/people','Omnis molestias qui dolore qui. Aut laborum ipsum dolor et voluptatem. Rerum et in rerum eum.\n \rFacilis molestias consequatur illo sed et eaque cumque. Id hic harum. Dolor sed natus maiores tempore. Delectus facere rerum voluptatem.',5,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(31,'Unbranded Steel Mouse',926.00,'https://placeimg.com/640/480/nature','Quibusdam qui maiores consequatur in. Excepturi laudantium et ut quidem perspiciatis. Et veritatis odit nihil ipsa. Amet praesentium qui repellat. Et at recusandae quam maxime odit enim sed voluptatem nostrum. Dolor ut aliquid id dolorum sed et reiciendis.\n \rQuasi dolores soluta. Beatae eaque rerum unde amet dolores impedit vitae. Optio dolorem accusamus tempora excepturi et nihil itaque ex. Rerum pariatur sed sed nihil laborum corrupti.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(32,'Handcrafted Steel Bacon',511.00,'https://placeimg.com/640/480/people','Magni voluptate nisi. Asperiores ut distinctio aperiam aut soluta amet enim sint vel. Nihil est dolorem explicabo ut sit ratione. Iure aspernatur occaecati consequuntur sapiente accusantium reprehenderit natus repellendus facere.\n \rUt et harum ipsam error iste quo ut qui. Ex asperiores repellendus ut accusantium. Sint tenetur magni eos. Laboriosam debitis vitae facilis quis eius nemo. Ratione ullam omnis nam voluptas est.',4,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(33,'Handcrafted Metal Hat',724.00,'https://placeimg.com/640/480/people','Minima labore itaque sit ipsa nulla. Qui culpa iste recusandae amet et. Eveniet quis maxime porro. Ipsam ea nulla nesciunt. Ea reiciendis mollitia.\n \rFuga odit reiciendis. Asperiores ratione quia labore quae necessitatibus eaque commodi. Sapiente est maiores. Id modi porro at rerum suscipit. Expedita necessitatibus debitis corrupti similique.',5,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(34,'Fantastic Fresh Bacon',128.00,'https://placeimg.com/640/480/nature','Consequatur voluptatem est corporis. Quas repellendus officiis assumenda illum vel ratione. Vitae expedita amet dolores ea mollitia quis voluptatibus.\n \rQuo nisi veniam. Qui eum quia beatae eum quibusdam rem nihil esse quisquam. Provident qui sequi sit ea id eius beatae sed eveniet.',3,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(35,'Awesome Metal Shirt',808.00,'https://placeimg.com/640/480/nature','Dicta ipsam qui molestias numquam. Quidem voluptate porro. Ut non ipsum. Ipsa qui et minima hic. Et laboriosam dolorem placeat. Quis qui id maxime iure ut rem natus rem.\n \rAd cumque magnam optio iure ratione ipsa facilis iure quae. Nobis voluptas nisi dolor omnis. Velit dolore iusto doloribus recusandae id quasi quaerat vitae est. Voluptate veritatis nihil atque nostrum quaerat molestiae ad aut doloribus. Iusto labore sit dolores odit quidem recusandae voluptate praesentium eos.',2,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(36,'Small Frozen Table',102.00,'https://placeimg.com/640/480/people','Inventore quos nulla et sint provident. Dolor atque pariatur quibusdam praesentium sequi odio reprehenderit. Nihil explicabo magni itaque. Voluptates cum quia. Ad ullam magnam praesentium et.\n \rDolorem in quo consequatur sit non sint error. Iste eum iste itaque id id exercitationem ut quis. Eos sit est et et.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(37,'Refined Plastic Soap',567.00,'https://placeimg.com/640/480/tech','Architecto quod vitae corporis expedita. Corporis vel cum iusto. Qui non enim perferendis aut earum.\n \rVoluptatibus consequatur possimus ut quas dolore quia dolorem rerum. Nisi delectus amet laborum consectetur ut enim. Totam ut suscipit dolor.',3,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(38,'Refined Soft Ball',66.00,'https://placeimg.com/640/480/people','Sint laboriosam debitis corrupti et velit veritatis temporibus. Et exercitationem et aliquam voluptate aut. Enim consectetur unde et.\n \rMaiores perferendis ratione dolorem. Sint eos quo. Hic voluptatem et explicabo sint aut quasi velit eius. Similique necessitatibus voluptatem labore autem aut. Non distinctio ratione.',2,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(39,'Tasty Wooden Car',195.00,'https://placeimg.com/640/480/architecture','Expedita sunt quis nostrum et similique magnam quis est sunt. Consequatur et magni est repellat voluptatem omnis. Impedit qui rerum et et. Eum quae corporis illum sapiente quia animi eum.\n \rVelit quidem maxime id voluptatem. Ea et debitis et in accusamus accusamus ut molestiae. Ea quos dolores omnis similique ut voluptatem magni. Rerum dignissimos qui repellat voluptatem qui quia sit excepturi. Temporibus quibusdam assumenda quasi hic. Fugiat expedita inventore tempore et ut quisquam voluptas.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35'),(40,'Handmade Wooden Chips',977.00,'https://placeimg.com/640/480/tech','Dolores omnis quasi et blanditiis quos est esse. In blanditiis consectetur quidem at praesentium odit. Autem atque ex doloremque nemo est. Ut nam enim officia fugit aut in nesciunt. Deleniti sed consequatur.\n \rQui et aut sed recusandae asperiores. Quos qui aut eveniet. Beatae dolore dolorum. Autem culpa provident saepe nam eveniet. Voluptatem laudantium alias odio voluptatibus hic omnis dignissimos. Impedit quia rerum eos ut maxime excepturi porro quia eos.',1,'2020-03-12 22:36:35','2020-03-12 22:36:35');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jon','Doe','jondoe@email.com','123abc',NULL,NULL),(2,'Jane','Doe','janedoe@email.com','123abc',NULL,NULL),(3,'Jon','Snow','jonsnow@email.com','123abc',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-14 12:04:31
