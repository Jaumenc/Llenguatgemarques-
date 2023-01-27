for $libro in doc ("index.xml")/bib/libro
return <libro> {$libro/titulo,$libro/count(autor)} </libro>