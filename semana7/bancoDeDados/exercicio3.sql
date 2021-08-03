# a)
SELECT *
FROM convenios
WHERE convenios.con_codigo NOT IN (SELECT pacientes.con_codigo FROM pacientes);

# b)
SELECT pacientes.pac_nome AS 'Nome'
FROM pacientes
WHERE pac_codigo NOT IN (SELECT atendimentos.pac_codigo FROM atendimentos WHERE MONTH(ate_data)=1);