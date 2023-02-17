for $book in doc ("index.xml")/bookstore/book
where $book/price<=30
return $book