for $baile in doc ("index.xml")/escuela/baile
return <baile> Profesor: {data($baile/nombre_profesor)}; Clase: {data($baile/@estilo)}; Precio: {data($baile/precio)} </baile>