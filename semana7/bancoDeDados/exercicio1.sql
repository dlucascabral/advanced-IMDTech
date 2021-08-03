CREATE SCHEMA semana7q123;

USE semana7q123;

CREATE TABLE convenios (
	con_codigo INT NOT NULL,
    con_nome VARCHAR(45),
    PRIMARY KEY (con_codigo)
);

CREATE TABLE pacientes (
	pac_codigo INT NOT NULL,
    pac_nome VARCHAR(45),
    pac_nascimento DATE,
    con_codigo INT NOT NULL,
    PRIMARY KEY (pac_codigo),
    FOREIGN KEY (con_codigo)
		REFERENCES semana7q123.convenios (con_codigo)
);

CREATE TABLE atendimentos (
	ate_codigo INT NOT NULL,
    ate_data DATE,
    ate_diagnostico VARCHAR(100),
    pac_codigo INT NOT NULL,
    PRIMARY KEY (ate_codigo),
    FOREIGN KEY (pac_codigo) 
		REFERENCES semana7q123.pacientes (pac_codigo)
);