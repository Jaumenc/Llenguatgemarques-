for $book in doc ("index.xml")/bookstore/book
order by $book/@category, $book/title
return $book