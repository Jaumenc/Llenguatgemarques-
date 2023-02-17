let $book := doc ("index.xml")/bookstore/book
let $min := min($book/price),
    $max := max($book/price)
return <precio> <minimo> {$min} </minimo> <maximo> {$max} </maximo> </precio>