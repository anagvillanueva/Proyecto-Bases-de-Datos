-- MySQL Script generated by MySQL Workbench
-- Wed Aug  4 17:18:53 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET foreign_key_checks = 0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE DATABASE IF NOT EXISTS `Proyecto_BD2409`;
USE `Proyecto_BD2409`;
-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`Areas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`Areas` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`Areas` (
  `idAreas` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAreas`),
  UNIQUE INDEX `Nombre_UNIQUE` (`Nombre` ASC) VISIBLE)
ENGINE = InnoDB;




-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`Artículo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`Artículo` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`Artículo` (
  `idArtículo` INT NOT NULL AUTO_INCREMENT,
  `Título` VARCHAR(45) NOT NULL,
  `Keywords` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NULL,
  `Publicación` VARCHAR(45) NOT NULL,
  `idCopia` INT NULL,
  PRIMARY KEY (`idArtículo`),
  INDEX `fk_Artículo_Copia2_idx` (`idCopia` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`Artículo_Autor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`Artículo_Autor` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`Artículo_Autor` (
  `idArtículo` INT NOT NULL,
  `idAutor` INT NOT NULL,
  PRIMARY KEY (`idArtículo`, `idAutor`),
  INDEX `fk_Artículo_has_Autor_Autor1_idx` (`idAutor` ASC) VISIBLE,
  INDEX `fk_Artículo_has_Autor_Artículo1_idx` (`idArtículo` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`Autor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`Autor` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`Autor` (
  `idAutor` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `ap_paterno` VARCHAR(45) NOT NULL,
  `ap_materno` VARCHAR(45) NOT NULL,
  `RFC` VARCHAR(12) NOT NULL,
  `Email` VARCHAR(45) NULL,
  `Nivel` INT NULL,
  `Grado` VARCHAR(45) NOT NULL,
  `Tema_esp` VARCHAR(45) NOT NULL,
  `idAreas` INT NOT NULL,
  `idInstitucion` INT NOT NULL,
  PRIMARY KEY (`idAutor`),
  UNIQUE INDEX `RFC_UNIQUE` (`RFC` ASC) VISIBLE,
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC) VISIBLE,
  INDEX `fk_Autor_Areas1_idx` (`idAreas` ASC) VISIBLE,
  INDEX `fk_Autor_Institucion1_idx` (`idInstitucion` ASC) VISIBLE,
  CONSTRAINT `fk_Autor_Areas1`
    FOREIGN KEY (`idAreas`)
    REFERENCES `Proyecto_BD2409`.`Areas` (`idAreas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Autor_Institucion1`
    FOREIGN KEY (`idInstitucion`)
    REFERENCES `Proyecto_BD2409`.`Institucion` (`idInstitucion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`Congreso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`Congreso` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`Congreso` (
  `idCongreso` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Edicion` INT NOT NULL,
  `Ciudad` VARCHAR(45) NOT NULL,
  `Fecha_inicio` DATE NOT NULL,
  `Fecha_final` DATE NOT NULL,
  `TipoCongreso` VARCHAR(45) NOT NULL,
  `Frecuencia` VARCHAR(20) NOT NULL,
  `Costos` VARCHAR(45) NOT NULL,
  `idPais` INT NOT NULL,
  PRIMARY KEY (`idCongreso`),
  INDEX `fk_Congreso_Pais1_idx` (`idPais` ASC) VISIBLE,
  CONSTRAINT `fk_Congreso_Pais1`
    FOREIGN KEY (`idPais`)
    REFERENCES `Proyecto_BD2409`.`Pais` (`idPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

DELIMITER $$
DROP TRIGGER IF EXISTS bi_congreso $$
CREATE TRIGGER bi_congreso BEFORE INSERT ON Congreso
FOR EACH ROW BEGIN
IF(NEW.Fecha_final <= NEW.Fecha_inicio) THEN
signal sqlstate'45000' SET MESSAGE_TEXT = 'Fecha final no valida';
END IF;
IF(NEW.TipoCongreso = 'NACIONAL') THEN
set NEW.idPais = 1;
END IF;
END $$
DELIMITER ;

select trigger_name, event_manipulation, event_object_table, action_statement, trigger_schema
from information_schema.triggers
where trigger_schema = 'Proyecto_BD2409';
-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`Congreso_Artículo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`Congreso_Artículo` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`Congreso_Artículo` (
  `idCongreso` INT NOT NULL,
  `idArtículo` INT NOT NULL,
  PRIMARY KEY (`idCongreso`, `idArtículo`),
  INDEX `fk_Congreso_has_Artículo_Artículo1_idx` (`idArtículo` ASC) VISIBLE,
  INDEX `fk_Congreso_has_Artículo_Congreso1_idx` (`idCongreso` ASC) VISIBLE,
  CONSTRAINT `fk_Congreso_has_Artículo_Congreso1`
    FOREIGN KEY (`idCongreso`)
    REFERENCES `Proyecto_BD2409`.`Congreso` (`idCongreso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Congreso_has_Artículo_Artículo1`
    FOREIGN KEY (`idArtículo`)
    REFERENCES `Proyecto_BD2409`.`Artículo` (`idArtículo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`Copia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`Copia` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`Copia` (
  `idCopia` INT NOT NULL AUTO_INCREMENT,
  `idInvestigadores` INT NULL,
  `idLab_campus` INT NULL,
  PRIMARY KEY (`idCopia`),
  INDEX `fk_Copia_Investigadores1_idx` (`idInvestigadores` ASC) VISIBLE,
  INDEX `fk_Copia_Lab_campus1_idx` (`idLab_campus` ASC) VISIBLE,
  CONSTRAINT `fk_Copia_Investigadores1`
    FOREIGN KEY (`idInvestigadores`)
    REFERENCES `Proyecto_BD2409`.`Investigadores` (`idInvestigadores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Copia_Lab_campus1`
    FOREIGN KEY (`idLab_campus`)
    REFERENCES `Proyecto_BD2409`.`Lab_campus` (`idLab_campus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

DELIMITER $$
DROP TRIGGER IF EXISTS bi_copia $$
CREATE TRIGGER bi_copia BEFORE INSERT ON Copia
FOR EACH ROW BEGIN
IF(NEW.idInvestigadores is null AND NEW.idLab_campus is null) THEN
signal sqlstate'45000' SET MESSAGE_TEXT = 'Por favor indica en donde esta la copia';
END IF;
END $$
DELIMITER ;

select trigger_name, event_manipulation, event_object_table, action_statement, trigger_schema
from information_schema.triggers
where trigger_schema = 'Proyecto_BD2409';

-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`GruposInvestigacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`GruposInvestigacion` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`GruposInvestigacion` (
  `idGruposInvestigacion` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `idAreas` INT NOT NULL,
  PRIMARY KEY (`idGruposInvestigacion`),
  INDEX `fk_GruposInvestigacion_Areas1_idx` (`idAreas` ASC) VISIBLE,
  CONSTRAINT `fk_GruposInvestigacion_Areas1`
    FOREIGN KEY (`idAreas`)
    REFERENCES `Proyecto_BD2409`.`Areas` (`idAreas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

DELIMITER $$
DROP TRIGGER IF EXISTS bu_GpoInv $$
CREATE TRIGGER bu_GpoInv BEFORE UPDATE ON GruposInvestigacion
FOR EACH ROW BEGIN
IF(NEW.Nombre = OLD.Nombre) THEN
signal sqlstate'45000' SET MESSAGE_TEXT = 'No puede haber dos grupos de investigacion con el mismo nombre';
END IF;
END $$
DELIMITER ;

select trigger_name, event_manipulation, event_object_table, action_statement, trigger_schema
from information_schema.triggers
where trigger_schema = 'Proyecto_BD2409';

-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`InformeTécnico`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`InformeTécnico` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`InformeTécnico` (
  `idInforme` INT NOT NULL AUTO_INCREMENT,
  `Numero_informe` VARCHAR(45) NOT NULL,
  `CentroPublicación` VARCHAR(45) NOT NULL,
  `Fecha` DATE NOT NULL,
  `Costos` VARCHAR(45) NOT NULL,
  `idArtículo` INT NOT NULL,
  PRIMARY KEY (`idInforme`),
  UNIQUE INDEX `Numero_informe_UNIQUE` (`Numero_informe` ASC) VISIBLE,
  INDEX `fk_InformeTécnico_Artículo1_idx` (`idArtículo` ASC) VISIBLE,
  CONSTRAINT `fk_InformeTécnico_Artículo1`
    FOREIGN KEY (`idArtículo`)
    REFERENCES `Proyecto_BD2409`.`Artículo` (`idArtículo`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`Institucion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`Institucion` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`Institucion` (
  `idInstitucion` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idInstitucion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`Investigadores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`Investigadores` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`Investigadores` (
  `idInvestigadores` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `ap_paterno` VARCHAR(45) NOT NULL,
  `ap_materno` VARCHAR(45) NOT NULL,
  `Sexo` VARCHAR(1) NOT NULL,
  `Curp` VARCHAR(18) NOT NULL,
  `idGruposInvestigacion` INT NOT NULL,
  `idInstitucion` INT NOT NULL,
  PRIMARY KEY (`idInvestigadores`),
  INDEX `fk_Investigadores_GruposInvestigacion1_idx` (`idGruposInvestigacion` ASC) VISIBLE,
  INDEX `fk_Investigadores_Institucion1_idx` (`idInstitucion` ASC) VISIBLE,
  CONSTRAINT `fk_Investigadores_GruposInvestigacion1`
    FOREIGN KEY (`idGruposInvestigacion`)
    REFERENCES `Proyecto_BD2409`.`GruposInvestigacion` (`idGruposInvestigacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Investigadores_Institucion1`
    FOREIGN KEY (`idInstitucion`)
    REFERENCES `Proyecto_BD2409`.`Institucion` (`idInstitucion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails
-- (`proyecto_bd2409`.`investigadores`, CONSTRAINT `fk_Investigadores_GruposInvestigacion1` FOREIGN KEY (`idGruposInvestigacion`) REFERENCES `gruposinvestigacion` (`idGruposInvestigacion`))
-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`Lab_campus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`Lab_campus` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`Lab_campus` (
  `idLab_campus` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `idInstitucion` INT NOT NULL,
  PRIMARY KEY (`idLab_campus`),
  INDEX `fk_Lab_campus_Institucion1_idx` (`idInstitucion` ASC) VISIBLE,
  CONSTRAINT `fk_Lab_campus_Institucion1`
    FOREIGN KEY (`idInstitucion`)
    REFERENCES `Proyecto_BD2409`.`Institucion` (`idInstitucion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`Pais`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`Pais` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`Pais` (
  `idPais` INT NOT NULL AUTO_INCREMENT,
  `Pais` VARCHAR(45) NOT NULL,
  `Pais_ISO` VARCHAR(6) NOT NULL,
  PRIMARY KEY (`idPais`),
  UNIQUE INDEX `Pais_UNIQUE` (`Pais` ASC) VISIBLE,
  UNIQUE INDEX `Pais_ISO_UNIQUE` (`Pais_ISO` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`Revista`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`Revista` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`Revista` (
  `idRevistaCientifica` INT NOT NULL AUTO_INCREMENT,
  `NombreRevista` VARCHAR(45) NOT NULL,
  `Editorial` VARCHAR(45) NOT NULL,
  `Editor` VARCHAR(45) NOT NULL,
  `Numero` INT NOT NULL,
  `Paginas` VARCHAR(45) NOT NULL,
  `Fecha_publicacion` VARCHAR(45) NOT NULL,
  `Fecha_inicio` VARCHAR(45) NOT NULL,
  `Frecuencia` VARCHAR(45) NOT NULL,
  `idTemasRevista` INT NOT NULL,
  PRIMARY KEY (`idRevistaCientifica`),
  INDEX `fk_Revista_TemasRevista1_idx` (`idTemasRevista` ASC) VISIBLE,
  CONSTRAINT `fk_Revista_TemasRevista1`
    FOREIGN KEY (`idTemasRevista`)
    REFERENCES `Proyecto_BD2409`.`TemasRevista` (`idTemasRevista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`Revista_Artículo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`Revista_Artículo` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`Revista_Artículo` (
  `idRevistaCientifica` INT NOT NULL,
  `idArtículo` INT NOT NULL,
  PRIMARY KEY (`idRevistaCientifica`, `idArtículo`),
  INDEX `fk_Revista_has_Artículo_Artículo1_idx` (`idArtículo` ASC) VISIBLE,
  INDEX `fk_Revista_has_Artículo_Revista1_idx` (`idRevistaCientifica` ASC) VISIBLE,
  CONSTRAINT `fk_Revista_has_Artículo_Revista1`
    FOREIGN KEY (`idRevistaCientifica`)
    REFERENCES `Proyecto_BD2409`.`Revista` (`idRevistaCientifica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Revista_has_Artículo_Artículo1`
    FOREIGN KEY (`idArtículo`)
    REFERENCES `Proyecto_BD2409`.`Artículo` (`idArtículo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_BD2409`.`TemasRevista`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Proyecto_BD2409`.`TemasRevista` ;

CREATE TABLE IF NOT EXISTS `Proyecto_BD2409`.`TemasRevista` (
  `idTemasRevista` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTemasRevista`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

select * from Congreso;
