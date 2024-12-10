create database tp2_mvc;

use tp2_mvc;

CREATE TABLE IF NOT EXISTS `artists` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `biography` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `artworks` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(150) NOT NULL,
  `description` TEXT NOT NULL,
  `artists_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_artworks_artists`
    FOREIGN KEY (`artists_id`)
    REFERENCES `artists` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `exhibitions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  `date` DATE NOT NULL,
  `artists_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_exhibitions_artists1`
    FOREIGN KEY (`artists_id`)
    REFERENCES `artists` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `categories` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(150) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB;

INSERT INTO `categories` (`name`)
VALUES
('Impressionnisme'), 
('Renaissance'), 
('Cubisme'), 
('Expressionnisme'), 
('Surréalisme');

INSERT INTO artworks (title, description, artists_id, category_id) VALUES
('Starry Night', 'Une représentation tourbillonnante du ciel nocturne.', 1, 5), -- Surréalisme
('Les Demoiselles d\'Avignon', 'Un tableau révolutionnaire marquant le début du cubisme.', 2, 3), -- Cubisme
('Water Lilies', 'Une série de peintures représentant un étang fleuri.', 3, 1), -- Impressionnisme
('The Two Fridas', 'Un double autoportrait symbolisant la douleur et la dualité.', 4, 4), -- Expressionnisme
('The Last Supper', 'Une célèbre fresque représentant le dernier repas du Christ.', 5, 2); -- Renaissance

use tp2_mvc;
ALTER TABLE artworks ADD COLUMN image VARCHAR(255) NULL;

