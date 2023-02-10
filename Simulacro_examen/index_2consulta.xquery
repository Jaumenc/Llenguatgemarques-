for $baile in doc ("index.xml")/escuela/baile
where $baile/sala=2
where $baile/precio<35
return <baile> Estilo: {data($baile/@estilo)}; Precio: {data($baile/precio)}; Periocidad: {data($baile/precio/@periocidad)}; Moneda: {data($baile/precio/@moneda)}; Plazas: {data($baile/plazas)}; Fecha inicio: {data($baile/fecha_inicio)}; Fecha finalizacion: {data($baile/fecha_finalizacion)}; Dias semana: {data($baile/dias_semana)}; Nombre profesor: {data($baile/nombre_profesor)}; Sala: {data($baile/sala)} </baile>