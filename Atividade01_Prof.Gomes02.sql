CREATE DATABASE escola;
use escola;
/*Tabela do Aluno*/
CREATE TABLE Aluno (
nome VARCHAR(45),
numero INT UNIQUE,
semestre INT UNIQUE,
numero_aluno INT PRIMARY KEY auto_increment
);
/*Tabela do Professor*/
CREATE TABLE professor(
nome VARCHAR(45),
unidade INT UNIQUE,
matricula INT PRIMARY KEY auto_increment
);
/*Tabela da Turma*/
CREATE TABLE turma (
sala INT,
num_turma INT UNIQUE,
cod_disciplina INT PRIMARY KEY auto_increment
);
/*-----------------------------------------------------------------------------------------------*/
alter table Aluno DROP COLUMN numero;
select * from aluno;
alter table aluno add column ano INT UNIQUE;
alter table aluno add column materia varchar(80);
alter table aluno drop column semestre;
alter table aluno add column semestre INT;
alter table aluno drop column ano;
alter table aluno add column ano INT;
/*-----------------------------------------------------------------------------------------------*/
insert into Turma(sala)values(201), (202);
update turma set nome_disciplina ='ADB Java' where cod_disciplina =2;
drop table turma;
alter table turma add column nome_disciplina varchar (80);
/*-----------------------------------------------------------------------------------------------*/
ALTER TABLE professor drop column unidade;
ALTER TABLE professor ADD COLUMN unidade varchar(90);
insert into professor(nome,unidade)values('ArturBDL','Senai Taguatinga DF');
insert into professor(nome,unidade)values('JoãoBDB','Senai Taguatinga DF');
select * from professor;

delete from professor where matricula <3;
/*-----------------------------------------------------------------------------------------------*/
insert into aluno(nome,semestre,ano)Values('Bozo2027','2','2023');
insert into aluno(nome,semestre,ano)values('Lulaluvade9Dedo','2','2023');
insert into aluno(nome,semestre,ano)Values('CaboDaciolo','2','2023');
insert into aluno(nome,semestre,ano)values('SimoneTebete','2','2023');
insert into aluno(nome,semestre,ano)values('SerjãoBerranteiroMeuBerranteVouTocar','2','2023');
insert into aluno(nome,semestre,ano)values('KarolDosTeclados','2','2023');
insert into aluno(nome,semestre,ano)values('ToninhoTornado','2','2023');
insert into aluno(nome,semestre,ano)values('GuguLiberato','2','2023');
insert into aluno(nome,semestre,ano)values('OReidaMatemática','2','2023');
insert into aluno(nome,semestre,ano)values('Ludmillo','2','2023');
insert into aluno(nome,semestre,ano)values('João Vitor','2','2023');
insert into aluno(nome,semestre,ano)values('Miquinho','2','2023');
insert into aluno(nome,semestre,ano)values('PedroDoSuco','2','2023');
insert into aluno(nome,semestre,ano)values('Flávio','2','2023');
insert into aluno(nome,semestre,ano)values('Otávio','2','2023');
insert into aluno(nome,semestre,ano)values('Pedro','2','2023');
insert into aluno(nome,semestre,ano)values('TatiMamis','2','2023');
insert into aluno(nome,semestre,ano)values('CelsoCarequinha','2','2023');
insert into aluno(nome,semestre,ano)values('CesarBrofezor','2','2023');
insert into aluno(nome,semestre,ano)values('LucãoDevelopment','2','2023');
insert into aluno(nome,semestre,ano)values('Luiz','2','2023');
insert into aluno(nome,semestre,ano)values('Perninha','2','2023');
insert into aluno(nome,semestre,ano)values('Girafo','2','2023');
insert into aluno(nome,semestre,ano)values('Tilápio','2','2023');
insert into aluno(nome,semestre,ano)values('Gustavo','2','2023');
insert into aluno(nome,semestre,ano)values('BixcoitodeBolacha','2','2023');
insert into aluno(nome,semestre,ano)values('Limonado','2','2023');
insert into aluno(nome,semestre,ano)values('Gomes','2','2023');
insert into aluno(nome,semestre,ano)values('Rômulo','2','2023');
insert into aluno(nome,semestre,ano)values('Tomato','2','2023');
insert into aluno(nome,semestre,ano)values('SabugoDeMilho','2','2023');
insert into aluno(nome,semestre,ano)values('Prexeco','2','2023');
insert into aluno(nome,semestre,ano)values('Limonado','2','2023');
insert into aluno(nome,semestre,ano)values('BocaDeExtrume','2','2023');
insert into aluno(nome,semestre,ano)values('GustavoLimo','2','2023');
insert into aluno(nome,semestre,ano)values('Zé','2','2023');
insert into aluno(nome,semestre,ano)values('Gabriello','2','2023');
insert into aluno(nome,semestre,ano)values('Muleto','2','2023');
insert into aluno(nome,semestre,ano)values('MarílioMendonço','2','2023');
insert into aluno(nome,semestre,ano)values('Maiaro','2','2023');
insert into aluno(nome,semestre,ano)values('Maraiso','2','2023');
/*----------------------------------------------------------------------------------------*/
show tables;
/*----------------------------------------------------------------------------------------*/
select*from inscrito;
CREATE TABLE inscrito (
    fk_aluno_numero_aluno VARCHAR(45),
    fk_turma_cod_disciplina INT
);
  insert into inscrito(fk_aluno_numero_aluno,fk_turma_cod_disciplina) values(1,1),
 (2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),
 (11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),
 (21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),
 (31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2);
/*ORDER BY*/

select nome from aluno
order by nome ASC; /*ASC= ASCEDENTE, DESC= DECRESCENTE*/
/*-----------------------------------------------------------------------------------------*/
UPDATE inscrito  SET  fk_turma_cod_disciplina = 4
WHERE fk_aluno_numero_aluno < 20;
