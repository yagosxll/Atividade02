create database livraria06;
show databases;
use livraria06;

create table livros(
  id int auto_increment,
  livro varchar (50),
  autor varchar(255),
  sexoautor varchar(255),
  numpag int,
  editora varchar(255),
  valorcapa varchar(255),
  kindle varchar(225),
  ano varchar(255),
  primary key (id)
);

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "Pai Rico, Pai Pobre", "Robert T.Kiyoshi", "Masculino", 336, "Alta Books", "61,53", "58,45", "2018");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "Mindset", "Carol S. Dweck", "Feminino", 312, "Objetiva", "38,99", "14,95", "2017");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "Como fazer amigos e influenciar pessoas", "Dale Carnage", "Masculino", 256, "Sextante", "38,99", "33,24", "2019");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "A Cabana", "William P Young", "Masculino", 240, "Arqueiro", "35,99", "17,90", "2008");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "O Poder do Hábito", "Charles Duhigg", "Masculino", 408, "Objetiva", "42,99", "29,90", "2012");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "Código Limpo", "Robert C. Martin", "Masculino", 425, "Alta Books", "91,99", "87,39", "2009");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "Essencialismo", "Greg McKeown", "Masculino", 272, "Sextante", "53,58", "33,24", "2015");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "Me Poupe!", "Nathalia Arcuri", "Feminino", 176, "Sextante", "32,86", "17,09", "2018");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "Comece pelo porquê", "Simon Sinek", "Masculino", 256, "Sextante", "50,58", "24,90", "2018");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "O Alquimista", "Paulo Coelho", "Masculino", 206, "Paralela", "24,70", "14,70", "2017");


update livros set sexoautor="feminino" where Id=8;


-- 1º trazer todos os dados
select * from livros;

-- 2º trazer nome dos livros e editoras
select livro ,editora from livros;

-- 3º trazer o nome do livro,editora e autor sexo masculino 
select livro, editora, sexoautor from livros where Id <11 and sexoautor like 'masculino';

-- 4º trazer o nome do livro,num pag e autor sexo feminino
select livro, sexoautor, numpag from livros where Id <11 and sexoautor like 'feminino';

-- 5º trazer o nome do autor, editora e ano (2017)

select autor, editora, ano from livros where Id <11 and ano like '2017';

 -- 6º Trazer o nome dos autores do sexo masculino com livros publicados pela editora Sextante ou pela editora Altas Books

select autor, sexoautor, editora from livros where Id <11 and sexoautor like 'masculino' and editora in ('Sextante', 'Alta Books');

-- 7º Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum;

select livro, autor, numpag, editora, valorcapa, ano from livros where Id < 11;

-- 8º Trazer o nome do livro, autor, número de páginas e valor no Kindle;

select livro, autor, numpag, kindle from livros where Id <11;

-- 9º Trazer o nome dos autores com livros publicados pela editora Sextante

select autor, editora from livros where Id < 11 and editora = 'Sextante';

-- 10º Trazer o nome do livro, autores, valor com capa comum e valor no Kindle

select livro, autor, valorcapa, kindle from livros where Id < 11;

-- 11º Trazer o nome do livro, autor e valor Kindle somente de livros com valores menores que R$ 40,00;

select livro, autor, kindle from livros where Id < 11 and kindle < '40,00';

-- 12º Trazer o nome do livro e autor onde o ano de publicação seja maior que 2017, a editora seja Sextante e o sexo do autor seja feminino;

select livro , autor, sexoautor, editora, ano from livros where Id < 11 and sexoautor like 'feminino' and editora = 'Sextante' and ano  > '2017';

-- 13º Trazer o nome do livro e editora de livros com mais de 200 páginas;

select livro, numpag , editora from livros where Id < 11 and numpag > 200;

-- 14º Trazer o nome do livro, número de páginas do livro e autores que começam com a letra "C";

select livro, autor, numpag from livros where Id < 11 and autor like 'C%';

-- 15º  Trazer o nome do autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books;

select autor, sexoautor, editora, ano from livros where Id < 11 and sexoautor = 'Masculino' and editora = 'Alta Books';

-- 16º  Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00;

select livro, autor, numpag, editora, ano, valorcapa from livros where Id < 11 and valorcapa > 50;

-- 17º Trazer o nome do livro, editora e valor capa comum onde o nome do autor comece com Nathalia;

select livro, autor, editora, valorcapa from livros where Id < 11 and autor like "%Nathalia%";

-- 18º Trazer o nome do livro, autor, número de páginas dos livros publicados até 2017;

select livro, autor , numpag, ano from livros where Id < 11 and ano <= 2017;

-- 19º Trazer o nome dos autores com livros publicados pela editora Sextante com mais de 200 páginas;

select autor, editora, numpag from livros where Id < 11 and editora = 'Sextante' and numpag > 200;

-- 20º Trazer o nome do livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante;

select livro, autor, valorcapa, editora from livros where Id < 11 and valorcapa > 30 and editora= 'Sextante';