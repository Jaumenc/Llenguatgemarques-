for $libro in doc ("index.xml")/bib/libro 
order by $libro/@anyo
return <li> {data($libro/titulo)} -> {data($libro/@anyo)}</li>