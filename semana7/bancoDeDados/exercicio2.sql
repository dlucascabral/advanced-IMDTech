INSERT INTO convenios
	VALUES (1, "convenio1"), (2, "convenio2"), (3, "convenio3");

INSERT INTO pacientes
	VALUES (4, "Han Solo", "19900608", 1), (5, "Chewbacca", "19941110", 2), (6, "Luke", "19881216", 2);

INSERT INTO atendimentos
	VALUES (7, "19910114", "Gripe", 4), (8, "19920204", "Raiva", 5), (9, "19930122", "Sinusite", 6);

# a)

SELECT pacientes.pac_nome AS 'Nome', pacientes.pac_nascimento AS 'Data de Nascimento'
FROM pacientes
WHERE pac_nascimento = (SELECT MAX(pac_nascimento) FROM pacientes);

# b)

SELECT pacientes.pac_nome AS 'Nome', convenios.con_nome AS 'Convenio'
FROM pacientes JOIN convenios ON pacientes.con_codigo = convenios.con_codigo
WHERE pac_nascimento = (SELECT MIN(pac_nascimento) FROM pacientes);