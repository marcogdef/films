-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 05, 2024 alle 11:25
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_movies`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `attore`
--

CREATE TABLE `attore` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `secondo_nome` varchar(255) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `data_di_nascita` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `attore`
--

INSERT INTO `attore` (`id`, `nome`, `secondo_nome`, `cognome`, `data_di_nascita`) VALUES
(1, 'matthew', NULL, 'McConaughey', '1969-11-04'),
(2, 'Jessica', NULL, 'Chastain', '1977-03-24'),
(3, 'Leonardo', NULL, 'DiCaprio', '1974-11-11'),
(4, 'Michael', NULL, 'Caine', '1933-03-14'),
(5, 'Benicio', NULL, 'Del Toro', '1967-02-19'),
(6, 'Kevin', NULL, 'Spacey', '1959-07-26'),
(7, 'Gabriel', NULL, 'Byrne', '1950-05-12'),
(8, 'Brad', NULL, 'Pitt', '1963-12-18'),
(9, 'Morgan', NULL, 'Freeman', '1937-06-01'),
(10, 'Gwyneth', NULL, 'Paltrow', '1972-09-27'),
(11, 'Jake', NULL, 'Gyllenhaal', '1980-12-19'),
(12, 'Rene', NULL, 'Russo', '1954-02-17'),
(13, 'Cillian', NULL, 'Murphy', '1976-05-25'),
(14, 'Robert', 'Jr.', 'Downey', '1965-04-04'),
(15, 'Florence', NULL, 'Pugh', '1996-01-03'),
(16, 'Guy', NULL, 'Pierce', '1967-10-05'),
(17, 'Joe', NULL, 'Pantoliano', '1951-09-12'),
(18, 'Jorja', NULL, 'Fox', '1968-07-07'),
(19, 'Larry', NULL, 'Holden', '1661-05-15');

-- --------------------------------------------------------

--
-- Struttura della tabella `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `titolo` varchar(255) NOT NULL,
  `anno_di_uscita` int(11) NOT NULL,
  `sinossi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `film`
--

INSERT INTO `film` (`id`, `titolo`, `anno_di_uscita`, `sinossi`) VALUES
(1, 'interstellar', 2014, 'Interpretato da Matthew McConaughey, Anne Hathaway, Jessica Chastain e Michael Caine, il film narra di un gruppo di astronauti che viaggiano attraverso un wormhole in cerca di un pianeta abitabile per l\'umanità. Nolan ha scritto la sceneggiatura assieme a suo fratello Jonathan, che per primo sviluppò il film nel 2007. Christopher Nolan ha inoltre prodotto il film insieme a sua moglie Emma Thomas e Lynda Obst. Il fisico teorico del Caltech Kip Thorne, uno dei maggiori esperti internazionali della teoria della relatività generale, è produttore esecutivo e ha contribuito al film come consulente scientifico.'),
(2, 'inception', 2010, 'Il film, un thriller fantascientifico che esplora il concetto onirico, ha un cast composto da Leonardo DiCaprio, Tom Hardy, Ken Watanabe, Joseph Gordon-Levitt, Ellen Page, Marion Cotillard e Cillian Murphy.'),
(3, 'i soliti sospetti', 1995, 'Vincitore di due Premi Oscar nel 1996 per la migliore sceneggiatura originale e il miglior attore non protagonista andato a Kevin Spacey, è considerato uno dei migliori thriller di tutti i tempi, in virtù dell\'intreccio della trama e dell\'imprevedibilità degli eventi. È stato presentato fuori concorso al 48º Festival di Cannes.'),
(4, 'seven', 1995, 'Seven, talvolta reso graficamente come Se7en, è un film del 1995 diretto da David Fincher e interpretato da Brad Pitt, Morgan Freeman, Gwyneth Paltrow e Kevin Spacey.'),
(5, 'nightcrawler', 2014, 'Lo sciacallo - Nightcrawler (Nightcrawler) è un film del 2014 scritto e diretto da Dan Gilroy, al suo debutto come regista[1], con protagonista Jake Gyllenhaal.'),
(6, 'oppenheimer', 2023, 'Oppenheimer è un film del 2023 scritto, diretto e co-prodotto da Christopher Nolan.\r\n\r\nBasato sulla biografia Robert Oppenheimer, il padre della bomba atomica di Kai Bird e Martin J. Sherwin, il film racconta la vita del fisico teorico statunitense J. Robert Oppenheimer. La storia si concentra prevalentemente sugli studi di Oppenheimer, sulla sua direzione del progetto Manhattan durante la seconda guerra mondiale e sulla sua caduta in disgrazia a causa della sua audizione di sicurezza del 1954. Il cast è composto da Cillian Murphy, nei panni di Oppenheimer, Emily Blunt, Matt Damon, Robert Downey Jr., Florence Pugh, Josh Hartnett, Casey Affleck, Rami Malek e Kenneth Branagh.'),
(7, 'memento', 2000, 'Memento è un film del 2000 scritto e diretto da Christopher Nolan.\r\n\r\nLa sceneggiatura è basata sul racconto del fratello del regista, Jonathan Nolan, Memento Mori, pubblicato però successivamente alla realizzazione del film. Il film è stato candidato ai Premi Oscar 2002 come migliore sceneggiatura originale e miglior montaggio.');

-- --------------------------------------------------------

--
-- Struttura della tabella `film_attore`
--

CREATE TABLE `film_attore` (
  `film_id` int(11) NOT NULL,
  `attore_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `film_attore`
--

INSERT INTO `film_attore` (`film_id`, `attore_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 8),
(4, 9),
(4, 10),
(5, 11),
(5, 12),
(6, 13),
(6, 14),
(6, 15),
(7, 16),
(7, 17),
(7, 18),
(7, 19);

-- --------------------------------------------------------

--
-- Struttura della tabella `film_genere`
--

CREATE TABLE `film_genere` (
  `film_id` int(11) NOT NULL,
  `genere_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `film_genere`
--

INSERT INTO `film_genere` (`film_id`, `genere_id`) VALUES
(1, 'Drammatico'),
(1, 'Fantasy'),
(2, 'Animazione'),
(2, 'Fantasy'),
(2, 'Thriller'),
(3, 'Giallo'),
(3, 'Horror'),
(3, 'Mystery'),
(4, 'Biografico'),
(4, 'Drammatico'),
(4, 'Musical'),
(5, 'Commedia'),
(5, 'Drammatico'),
(6, 'Commedia'),
(6, 'Drammatico'),
(6, 'Romantico'),
(7, 'Animazione'),
(7, 'Commedia'),
(7, 'Fantasy');

-- --------------------------------------------------------

--
-- Struttura della tabella `film_regista`
--

CREATE TABLE `film_regista` (
  `film_id` int(11) NOT NULL,
  `regista_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `film_regista`
--

INSERT INTO `film_regista` (`film_id`, `regista_id`) VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `film_utente`
--

CREATE TABLE `film_utente` (
  `id_film` int(11) DEFAULT NULL,
  `id_utente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `film_utente`
--

INSERT INTO `film_utente` (`id_film`, `id_utente`) VALUES
(5, 2),
(7, 5),
(1, 3),
(3, 3),
(4, 2),
(7, 2),
(5, 4),
(7, 4),
(1, 4),
(3, 4),
(4, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `genere`
--

CREATE TABLE `genere` (
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `genere`
--

INSERT INTO `genere` (`nome`) VALUES
('Animazione'),
('Biografico'),
('Commedia'),
('Crime'),
('Drammatico'),
('Fantasy'),
('Giallo'),
('Horror'),
('Musical'),
('Mystery'),
('Romantico'),
('Thriller');

-- --------------------------------------------------------

--
-- Struttura della tabella `regista`
--

CREATE TABLE `regista` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `secondo_nome` varchar(255) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `data_di_nascita` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `regista`
--

INSERT INTO `regista` (`id`, `nome`, `secondo_nome`, `cognome`, `data_di_nascita`) VALUES
(1, 'Christopher', NULL, 'Nolan', '1970-07-30'),
(3, 'Bryan', NULL, 'Singer', '1965-09-17'),
(4, 'David', NULL, 'Fincher', '1962-08-28'),
(5, 'Dan', NULL, 'Gilroy', '1959-06-24');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hashedPSW` varchar(255) NOT NULL,
  `reg_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`id`, `nome`, `last_name`, `email`, `hashedPSW`, `reg_date`) VALUES
(1, 'donotuse', 'donotuse', 'ciao@gmail.com', 'prova', '2024-05-16 09:46:33'),
(2, 'prova', 'prova', 'prova@prova.it', '$2y$10$KyyIDkq5Y02ueiigHTZqUuicTy3pR1QLRy.YGjs1fYYQbFbpV0lG6', '2024-05-08 17:58:41'),
(3, 'George', 'Clooney', 'asd123@email.com', '$2y$10$N/BS.BhRB.puGbAT9OCmceTrSiVSgWYaISQJVcFDzH7IHdVLKRpwu', '2024-05-15 11:18:37'),
(4, 'Mastro', 'Geppetto', 'gesualdo@gmail.com', '$2y$10$9JXvvG4wXQptoy6uVKhBQOT3ducec4zuorB09E/MBx2DYMEr6jkL.', '2024-05-15 11:19:10'),
(5, 'Roger', 'Rabbit', 'roger@rabbit.com', '$2y$10$YcGJCH1EgGhF1q52CKAfqumLnF.MQ2jGTOj01OZjs95ihQO2rATs6', '2024-05-15 11:19:37');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `attore`
--
ALTER TABLE `attore`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `film_attore`
--
ALTER TABLE `film_attore`
  ADD PRIMARY KEY (`film_id`,`attore_id`),
  ADD KEY `attore_id` (`attore_id`);

--
-- Indici per le tabelle `film_genere`
--
ALTER TABLE `film_genere`
  ADD PRIMARY KEY (`film_id`,`genere_id`),
  ADD KEY `genere_id` (`genere_id`);

--
-- Indici per le tabelle `film_regista`
--
ALTER TABLE `film_regista`
  ADD PRIMARY KEY (`film_id`,`regista_id`),
  ADD KEY `regista_id` (`regista_id`);

--
-- Indici per le tabelle `film_utente`
--
ALTER TABLE `film_utente`
  ADD KEY `id_film` (`id_film`),
  ADD KEY `id_utente` (`id_utente`);

--
-- Indici per le tabelle `genere`
--
ALTER TABLE `genere`
  ADD PRIMARY KEY (`nome`);

--
-- Indici per le tabelle `regista`
--
ALTER TABLE `regista`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `attore`
--
ALTER TABLE `attore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT per la tabella `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `regista`
--
ALTER TABLE `regista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `film_attore`
--
ALTER TABLE `film_attore`
  ADD CONSTRAINT `Film_Attore_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `Film_Attore_ibfk_2` FOREIGN KEY (`attore_id`) REFERENCES `attore` (`id`);

--
-- Limiti per la tabella `film_genere`
--
ALTER TABLE `film_genere`
  ADD CONSTRAINT `Film_Genere_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `Film_Genere_ibfk_2` FOREIGN KEY (`genere_id`) REFERENCES `genere` (`nome`);

--
-- Limiti per la tabella `film_regista`
--
ALTER TABLE `film_regista`
  ADD CONSTRAINT `Film_Regista_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `Film_Regista_ibfk_2` FOREIGN KEY (`regista_id`) REFERENCES `regista` (`id`);

--
-- Limiti per la tabella `film_utente`
--
ALTER TABLE `film_utente`
  ADD CONSTRAINT `Film_Utente_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `Film_Utente_ibfk_2` FOREIGN KEY (`id_utente`) REFERENCES `utenti` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
