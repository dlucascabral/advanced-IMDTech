CREATE TABLE endereco (
    Estado VARCHAR(45) NOT NULL,
    Cidade VARCHAR(45) NOT NULL,
    Bairro VARCHAR(45) NOT NULL,
    Rua VARCHAR(45) NOT NULL,
    Numero INT,
    Complemento VARCHAR(45),
    Alu_Codigo INT NOT NULL,
    FOREIGN KEY (Alu_Codigo)
        REFERENCES semana6.alunos (Alu_Codigo)
);