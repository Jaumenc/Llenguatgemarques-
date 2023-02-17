for $book in doc ("index.xml")/bookstore/book[price<=30]
return data($book)