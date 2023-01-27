for $libro in doc ("index.xml")/bib/libro
where $libro/@anyo>1992
where $libro/editorial="Addison-Wesley"
return <libro> {data($libro/@anyo)} -> {data($libro/titulo)} </libro>