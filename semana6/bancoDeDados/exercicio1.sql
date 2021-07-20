CREATE SCHEMA semana6 ;

USE semana6;

CREATE TABLE alunos (
    Alu_Codigo INT NOT NULL,
    Alu_Nome VARCHAR(45) NOT NULL,
    Alu_Endereco VARCHAR(45) NOT NULL,
    PRIMARY KEY (Alu_Codigo)
);

CREATE TABLE departamentos (
    Dep_Codigo INT NOT NULL,
    Dep_Nome VARCHAR(45) NULL,
    PRIMARY KEY (Dep_Codigo)
);

CREATE TABLE professores (
    Prof_Codigo INT NOT NULL,
    Prof_Nome VARCHAR(45) NULL,
    Prof_Endereco VARCHAR(45) NULL,
    Dep_Codigo INT NOT NULL,
    PRIMARY KEY (Prof_Codigo),
    FOREIGN KEY (Dep_Codigo)
        REFERENCES semana6.departamentos (Dep_Codigo)
);

CREATE TABLE turmas (
    Tur_Codigo INT NOT NULL,
    Tur_Nome VARCHAR(100) NOT NULL,
    Prof_Codigo INT NOT NULL,
    PRIMARY KEY (Tur_Codigo),
    FOREIGN KEY (Prof_Codigo)
        REFERENCES semana6.professores (Prof_Codigo)
);

CREATE TABLE alunos_has_turmas (
    Alu_Codigo INT NOT NULL,
    Tur_Codigo INT NOT NULL,
    Semestre VARCHAR(6) NOT NULL,
    PRIMARY KEY (Semestre),
    FOREIGN KEY (Alu_Codigo)
        REFERENCES semana6.alunos (Alu_Codigo),
    FOREIGN KEY (Tur_Codigo)
        REFERENCES semana6.turmas (Tur_Codigo)
);

