-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cs340_thaoto
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cs340_thaoto
-- -----------------------------------------------------
-- CREATE SCHEMA IF NOT EXISTS `cs340_thaoto` DEFAULT CHARACTER SET utf8 ;
USE `cs340_thaoto` ;

-- -----------------------------------------------------
-- Table `cs340_thaoto`.`genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs340_thaoto`.`genres` (
  `genre_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`genre_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs340_thaoto`.`artists`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs340_thaoto`.`artists` (
  `artist_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `birthdate` DATE NOT NULL,
  `genres_genre_id` INT NULL,
  PRIMARY KEY (`artist_id`),
  INDEX `fk_artists_genres1_idx` (`genres_genre_id` ASC) VISIBLE,
  CONSTRAINT `fk_artists_genres1`
    FOREIGN KEY (`genres_genre_id`)
    REFERENCES `cs340_thaoto`.`genres` (`genre_id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs340_thaoto`.`tracks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs340_thaoto`.`tracks` (
  `track_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `release_date` DATE NOT NULL,
  `duration` VARCHAR(45) NOT NULL,
  `genres_genre_id` INT NULL,
  PRIMARY KEY (`track_id`),
  INDEX `fk_tracks_genres1_idx` (`genres_genre_id` ASC) VISIBLE,
  CONSTRAINT `fk_tracks_genres1`
    FOREIGN KEY (`genres_genre_id`)
    REFERENCES `cs340_thaoto`.`genres` (`genre_id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs340_thaoto`.`albums`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs340_thaoto`.`albums` (
  `album_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `release_date` DATE NOT NULL,
  `genres_genre_id` INT NULL,
  PRIMARY KEY (`album_id`),
  INDEX `fk_albums_genres1_idx` (`genres_genre_id` ASC) VISIBLE,
  CONSTRAINT `fk_albums_genres1`
    FOREIGN KEY (`genres_genre_id`)
    REFERENCES `cs340_thaoto`.`genres` (`genre_id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs340_thaoto`.`artists_tracks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs340_thaoto`.`artists_tracks` (
  `artists_artist_id` INT NOT NULL,
  `tracks_track_id` INT NOT NULL,
  PRIMARY KEY (`artists_artist_id`, `tracks_track_id`),
  INDEX `fk_artists_has_tracks_tracks1_idx` (`tracks_track_id` ASC) VISIBLE,
  CONSTRAINT `fk_artists_has_tracks_artists1`
    FOREIGN KEY (`artists_artist_id`)
    REFERENCES `cs340_thaoto`.`artists` (`artist_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_artists_has_tracks_tracks1`
    FOREIGN KEY (`tracks_track_id`)
    REFERENCES `cs340_thaoto`.`tracks` (`track_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs340_thaoto`.`artists_albums`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs340_thaoto`.`artists_albums` (
  `artists_artist_id` INT NOT NULL,
  `albums_album_id` INT NOT NULL,
  PRIMARY KEY (`artists_artist_id`, `albums_album_id`),
  INDEX `fk_artists_has_albums_albums2_idx` (`albums_album_id` ASC) VISIBLE,
  INDEX `fk_artists_has_albums_artists2_idx` (`artists_artist_id` ASC) VISIBLE,
  CONSTRAINT `fk_artists_has_albums_artists2`
    FOREIGN KEY (`artists_artist_id`)
    REFERENCES `cs340_thaoto`.`artists` (`artist_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_artists_has_albums_albums2`
    FOREIGN KEY (`albums_album_id`)
    REFERENCES `cs340_thaoto`.`albums` (`album_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs340_thaoto`.`artists_albums`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs340_thaoto`.`artists_albums` (
  `artists_artist_id` INT NOT NULL,
  `albums_album_id` INT NOT NULL,
  PRIMARY KEY (`artists_artist_id`, `albums_album_id`),
  INDEX `fk_artists_has_albums_albums2_idx` (`albums_album_id` ASC) VISIBLE,
  INDEX `fk_artists_has_albums_artists2_idx` (`artists_artist_id` ASC) VISIBLE,
  CONSTRAINT `fk_artists_has_albums_artists2`
    FOREIGN KEY (`artists_artist_id`)
    REFERENCES `cs340_thaoto`.`artists` (`artist_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_artists_has_albums_albums2`
    FOREIGN KEY (`albums_album_id`)
    REFERENCES `cs340_thaoto`.`albums` (`album_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
