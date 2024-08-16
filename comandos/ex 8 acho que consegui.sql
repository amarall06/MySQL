select sexo, nascimento, nacionalidade, min(peso) from gafanhotos
where sexo like 'F%' and nascimento between '1990-01-01' and '2000-12-01';