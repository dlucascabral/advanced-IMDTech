const express = require("express");
const app = express();
const produtoRota = require("./rotas/produtos")
const indexRoute = require('./rotas/index.rota')

var expressLayouts = require('express-ejs-layouts')

app.use(express.json())

app.set('view engine', 'ejs')

app.set('layout', 'layouts/layout')

app.use(expressLayouts)

app.use('/static', express.static('public'))

app.use('/', indexRoute)

app.use("/api/produtos", produtoRota)

app.get("/api", (req, res) => {
  res.json({ msg: "Hello from Express!" });
});

app.get('/home', (req, res) => {
  const number = Math.random()
  res.render('pages/index', {variavel: number})
})

app.listen(8080, () => {
  console.log(`Servidor pronto na porta 8080 no ambiente ${process.env.NODE_ENV}`);
});