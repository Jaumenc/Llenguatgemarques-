for $book in doc ("index.xml")/bookstore
return <total> {count($book/book)}</total>