create schema semana7q4;

use semana7q4;

create table empregados (
	emp_matricula int not null,
    emp_nome varchar(45),
    emp_depto varchar(45),
    emp_funcao varchar(45),
    emp_salario decimal(10,2),
    emp_temposervico int,
    emp_inicioferias date,
    emp_filhos int,
    primary key (emp_matricula)
);

insert into empregados
	values  (1, 'Tony', 'Engenharia', null, 5500.00, null, null, null),
			(2, 'Peter', 'Engenharia', null, 1200.00, null, null, null),
            (3, 'Hank', 'Engenharia', null, 3800.00, null, null, null),
            (4, 'Pepper', 'Contabilidade', null, 3500.00, null, null, null),
            (5, 'Carter', 'Contabilidade', null, 3000.00, null, null, null),
            (6, 'Coulson', 'Contabilidade', null, 1500.00, null, null, null);

# a)
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

select empregados.emp_nome as 'Nome', empregados.emp_depto as 'Departamento', (select avg(emp_salario) from empregados group by emp_depto)
from empregados
order by empregados.emp_nome;