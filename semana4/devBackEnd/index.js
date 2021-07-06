const express = require('express');
const rotaProduto = require('./rotas/produtos.rota')

const app = express();
app.use(express.json());
app.use('/produtos', rotaProduto)

app.listen(8080, () => {
    console.log('Servidor pronto na porta 8080');
});