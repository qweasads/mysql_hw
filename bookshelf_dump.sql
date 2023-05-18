-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: it.vshp.online    Database: db_7a02b6
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Лев Толстой'),(2,'Алан Александр Милн'),(3,'Алексис де Токвиль'),(4,'Алекс Хейли и Малколм Икс'),(5,'Альбер Камю'),(6,'Альфред Дёблин'),(7,'Антон Чехов'),(8,'Астрид Линдгрен'),(9,'Вальмики'),(10,'Вергилий'),(11,'Вирджиния Вульф'),(12,'Вирджиния Вулф'),(13,'Владимир Набоков'),(14,'Вьяса'),(15,'Габриэль Гарсия Маркес'),(16,'Габриэль Гарсиа Маркес'),(17,'Генри Адамс'),(18,'Генри Миллер'),(19,'Генрик Ибсен'),(20,'Герман Мелвилл'),(21,'Гомер'),(22,'Гюнтер Грасс'),(23,'Гюстав Флобер'),(24,'Данте Алигьери'),(25,'Дени Дидро'),(26,'Джакомо Леопарди'),(27,'Джалаладдин Руми'),(28,'Джером Д. Сэлинджер'),(29,'Джеймс Болдуин'),(30,'Джеймс Джойс'),(31,'Джейн Остин'),(32,'Джеффри Чосер'),(33,'Джин Рис'),(34,'Джозеф Хеллер'),(35,'Джованни Боккаччо'),(36,'Джозеф Конрад'),(37,'Джон Апдайк'),(38,'Джон Кейнс'),(39,'Джон Кеннет Гэлбрейт'),(40,'Джон Керуак'),(41,'Джон Милтон'),(42,'Джон Стейнбек'),(43,'Джон Толкиен'),(44,'Джонатан Свифт'),(45,'Джордж Оруэлл'),(46,'Джордж Элиот'),(47,'Джоффри Чосер'),(48,'Дорис Лессинг'),(49,'Дэвид Герберт Лоуренс'),(50,'Дэвид Лоуренс'),(51,'Дэшиел Хэммет'),(52,'Еврипид'),(53,'Жан-Жак Руссо'),(54,'Жозе Сарамаго'),(55,'Жуан Гимарайнс Роза'),(56,'Зигмунд Фрейд'),(57,'Ивлин Во'),(58,'Иоганн Вольфганг фон Гёте'),(59,'Итало Звево'),(60,'Калидаса'),(61,'Карсон Маккаллерс'),(62,'Карл Маркс'),(63,'Кен Кизи'),(64,'Кеннет Грэм'),(65,'Клайв Льюис'),(66,'Кнут Гамсун'),(67,'Курт Воннегут'),(68,'Литтон Стречи'),(69,'Лоренс Стерн'),(70,'Лу Синь'),(71,'Луи-Фердинанд Селин'),(72,'Мао Цзедун'),(73,'Маргарет Митчелл'),(74,'Маргерит Юрсенар'),(75,'Марк Твен'),(76,'Марсель Пруст'),(77,'Мигель де Сервантес'),(78,'Мишель де Монтень'),(79,'Мурасаки Сикибу'),(80,'Мэри Шелли'),(81,'Нагиб Махфуз'),(82,'Натаниэль Уэст'),(83,'Неизвестный автор'),(84,'Никколо Макиавелли'),(85,'Николай Васильевич Гоголь'),(86,'Никос Казандзакис'),(87,'Олдос Хаксли'),(88,'Оноре де Бальзак'),(89,'Пауль Целан'),(90,'Публий Овидий Назон'),(91,'Ральф Эллисон'),(92,'Редьярд Киплинг'),(93,'Реймонд Чандлер'),(94,'Рейчел Карсон'),(95,'Ричард Райт'),(96,'Роберт Грейвз'),(97,'Роберт Музиль'),(98,'Роберт Пенн Уоррен'),(99,'Саади'),(100,'Салман Рушди'),(101,'Софокл'),(102,'Стендаль'),(103,'Сэмюэл Беккет'),(104,'Тайиб Салих'),(105,'Теодор Драйзер'),(106,'Томас Гоббс'),(107,'Томас Манн'),(108,'Тони Моррисон'),(109,'Труман Капоте'),(110,'Уилла Кейтер'),(111,'Уильям Голдинг'),(112,'Уильям Джемс'),(113,'Уильям Дю Бойс'),(114,'Уильям Фолкнер'),(115,'Уильям Шекспир'),(116,'Уинстон Черчилль'),(117,'Уолт Уитмен'),(118,'Федерико Гарсиа Лорка'),(119,'Фернанду Пессоа'),(120,'Филип Пулман'),(121,'Филип Рот'),(122,'Франсуа Рабле'),(123,'Франц Кафка'),(124,'Фрэнсис Скотт Фитцджеральд'),(125,'Фёдор Достоевский'),(126,'Халлдор Кильян Лакснесс'),(127,'Ханс Кристиан Андерсен'),(128,'Харпер Ли'),(129,'Хорхе Луис Борхес'),(130,'Хуан Рульфо'),(131,'Чарльз Дарвин'),(132,'Чарльз Диккенс'),(133,'Чинуа Ачебе'),(134,'Эдвин Уайт'),(135,'Эдгар Аллан По'),(136,'Эдит Уортон'),(137,'Эдуард Форстер'),(138,'Эли Визель'),(139,'Элис Уокер'),(140,'Эльза Моранте'),(141,'Эмили Бронте'),(142,'Энтони Берджесс'),(143,'Эрнест Хемингуэй'),(144,'Ясунари Кавабата'),(145,'Стивен Хокинг'),(146,'Стивен Хокинг'),(147,'Стивен Хокинг'),(148,'Стивен Хокинг');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18 12:58:25