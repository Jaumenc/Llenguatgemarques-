for $book in doc ("index.xml")/bookstore/book
return <titulo> {data($book/title)} </titulo>