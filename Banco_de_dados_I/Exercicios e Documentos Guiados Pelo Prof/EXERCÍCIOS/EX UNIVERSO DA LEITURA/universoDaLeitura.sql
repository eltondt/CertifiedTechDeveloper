-- MySQL Script generated by MySQL Workbench
-- Sun Aug 21 03:33:57 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema UNIVERSO_DA_LEITURA
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema UNIVERSO_DA_LEITURA
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `UNIVERSO_DA_LEITURA` DEFAULT CHARACTER SET utf8 ;
USE `UNIVERSO_DA_LEITURA` ;

-- -----------------------------------------------------
-- Table `UNIVERSO_DA_LEITURA`.`ASSOCIADOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UNIVERSO_DA_LEITURA`.`ASSOCIADOS` (
  `CODID_` INT NOT NULL,
  `RG` CHAR(7) NULL,
  `NOME` VARCHAR(50) NULL,
  `SOBRENOME` VARCHAR(50) NULL,
  `ENDERECO` VARCHAR(150) NULL,
  `CIDADE` VARCHAR(50) NULL,
  `ESTADO` VARCHAR(2) NULL,
  PRIMARY KEY (`CODID_`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UNIVERSO_DA_LEITURA`.`TELEFONES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UNIVERSO_DA_LEITURA`.`TELEFONES` (
  `TELEFONEID` INT NOT NULL,
  `TELEFONE_SOCIO` VARCHAR(100) NULL,
  `CODASSOC` INT NULL,
  PRIMARY KEY (`TELEFONEID`),
  INDEX `FK_ASSOCIADOS_TELEFONES_idx` (`CODASSOC` ASC) VISIBLE,
  CONSTRAINT `FK_ASSOCIADOS_TELEFONES`
    FOREIGN KEY (`CODASSOC`)
    REFERENCES `UNIVERSO_DA_LEITURA`.`ASSOCIADOS` (`CODID_`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UNIVERSO_DA_LEITURA`.`EMPRESTIMOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UNIVERSO_DA_LEITURA`.`EMPRESTIMOS` (
  `CODIGO` INT NOT NULL,
  `CODASSOC` INT NULL,
  `DATA` DATE NULL,
  `PRAZO_DEVOLUCAO` DATE NULL,
  `DATA_DEVOLUCAO` DATE NULL,
  PRIMARY KEY (`CODIGO`),
  INDEX `FK_EMPRESTIMOS_ASSOCIADOS_idx` (`CODASSOC` ASC) VISIBLE,
  CONSTRAINT `FK_EMPRESTIMOS_ASSOCIADOS`
    FOREIGN KEY (`CODASSOC`)
    REFERENCES `UNIVERSO_DA_LEITURA`.`ASSOCIADOS` (`CODID_`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UNIVERSO_DA_LEITURA`.`EDITORAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UNIVERSO_DA_LEITURA`.`EDITORAS` (
  `ID_EDITORA` INT NOT NULL,
  `RAZAO_SOCIAL` VARCHAR(150) NULL,
  `TELEFONE` VARCHAR(100) NULL,
  PRIMARY KEY (`ID_EDITORA`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UNIVERSO_DA_LEITURA`.`AUTORES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UNIVERSO_DA_LEITURA`.`AUTORES` (
  `ID_AUTORES` INT NOT NULL,
  `SOBRENOME` VARCHAR(100) NULL,
  `NOME` VARCHAR(100) NULL,
  PRIMARY KEY (`ID_AUTORES`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UNIVERSO_DA_LEITURA`.`LIVROS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UNIVERSO_DA_LEITURA`.`LIVROS` (
  `ID_LIVRO` INT NOT NULL,
  `COD_ISDN` VARCHAR(13) NULL,
  `TITULO` VARCHAR(200) NULL,
  `ANO_CRIACAO` DATE NULL,
  `COD_AUTOR` INT NULL,
  `ANO_PUBLICACAO` DATE NULL,
  `COD_EDITORA` INT NULL,
  PRIMARY KEY (`ID_LIVRO`),
  INDEX `FK_AUTORES_LIVROS_idx` (`COD_AUTOR` ASC) VISIBLE,
  INDEX `FK_LIVROS_EDITORAS_idx` (`COD_EDITORA` ASC) VISIBLE,
  CONSTRAINT `FK_LIVROS_AUTORES`
    FOREIGN KEY (`COD_AUTOR`)
    REFERENCES `UNIVERSO_DA_LEITURA`.`AUTORES` (`ID_AUTORES`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_LIVROS_EDITORAS`
    FOREIGN KEY (`COD_EDITORA`)
    REFERENCES `UNIVERSO_DA_LEITURA`.`EDITORAS` (`ID_EDITORA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UNIVERSO_DA_LEITURA`.`EXEMPLARES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UNIVERSO_DA_LEITURA`.`EXEMPLARES` (
  `ID_EXEMPLAR` INT NOT NULL,
  `COD_LIVRO` INT NULL,
  `SINISTRO` TINYINT NULL,
  PRIMARY KEY (`ID_EXEMPLAR`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UNIVERSO_DA_LEITURA`.`EMPRESTIMO_EXEMPLARES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UNIVERSO_DA_LEITURA`.`EMPRESTIMO_EXEMPLARES` (
  `ID-EMPRESTIMO_EXEMPLAR` INT NOT NULL,
  `COD_EMPRESTIMO` INT NULL,
  `COD_EXEMPLAR` INT NULL,
  PRIMARY KEY (`ID-EMPRESTIMO_EXEMPLAR`),
  INDEX `FK_EMPRESTIMO_EXEMPLARES_EXEMPLARES_idx` (`COD_EXEMPLAR` ASC) VISIBLE,
  INDEX `FK_EMPRESTIMO_EXEMPLARES_EMPRESTIMOS_idx` (`COD_EMPRESTIMO` ASC) VISIBLE,
  CONSTRAINT `FK_EMPRESTIMO_EXEMPLARES_EXEMPLARES`
    FOREIGN KEY (`COD_EXEMPLAR`)
    REFERENCES `UNIVERSO_DA_LEITURA`.`EXEMPLARES` (`ID_EXEMPLAR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_EMPRESTIMO_EXEMPLARES_EMPRESTIMOS`
    FOREIGN KEY (`COD_EMPRESTIMO`)
    REFERENCES `UNIVERSO_DA_LEITURA`.`EMPRESTIMOS` (`CODIGO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
