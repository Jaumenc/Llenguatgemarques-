for $libro in distinct-values (doc ("index.xml")/bib/libro/autor/apellido)
order by $libro
return data($libro)