select ano, count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*) desc;

select avg (carga) from cursos;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg (carga) from cursos);
