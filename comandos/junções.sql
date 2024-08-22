use cadastro;

create table gafanhotos_assiste_curso (
id int not null auto_increment,
data date,
idgafanhotos int,
idcurso int,
primary key(id),
foreign key(idgafanhotos) references	gafanhotos(id),
foreign key(idcurso) references cursos(idcurso)
)default charset = utf8;

insert into gafanhotos_assiste_curso values
(default, '2014-03-01','1','2');

select * from gafanhotos_assiste_curso;

select g.nome, c.nome from gafanhotos g
join gafanhotos_assiste_curso a
on g.id = a.idgafanhotos
join cursos c
on c.idcurso = a.idcurso
order by g.nome;