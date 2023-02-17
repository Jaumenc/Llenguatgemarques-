for $book in doc ("index.xml")/bookstore
let $a := count ($book)
return <libros> <titulos> {data($book/book/title)} </titulos> <total> {count($book/book)} </total> </libros>