for $libro in doc ("index.xml")/bib/libro
return <result> {($libro/titulo,$libro/autor)} </result>