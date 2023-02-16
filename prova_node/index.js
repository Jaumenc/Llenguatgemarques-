const express = require("espress");

const app = express ();


app.get("/libros",(req, res) => {
    res.send("Hola mundo");
});

app.listen(4000, () => {
    console.log("Escuchando en https://localhost:4000")
});