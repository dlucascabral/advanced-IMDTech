INSERT INTO convenios
	VALUES (1, "convenio1"), (2, "convenio2"), (3, "convenio3");

INSERT INTO pacientes
	VALUES (4, "Han Solo", "19900608", 1), (5, "Chewbacca", "19941110", 2), (6, "Luke", "19881216", 2);

INSERT INTO atendimentos
	VALUES (7, "19910114", "Gripe", 4), (8, "19920204", "Raiva", 5), (9, "19930122", "Sinusite", 6);

SELECT pacientes.pac_nome AS 'Nome', pacientes.pac_nascimento AS 'Data de Nascimento'
FROM pacientes;