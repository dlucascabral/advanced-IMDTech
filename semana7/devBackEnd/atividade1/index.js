const express = require('express')
const jwt = require('jsonwebtoken')
require('dotenv').config()
const app = express()

app.get('/token', (req, res) => {

    const payload = {number: Math.random()}

    const token = jwt.sign(payload, process.env.ACCESS_TOKEN_SECRET, {expiresIn: '3600s'})

    res.json({accessToken: token})
})

app.listen(8080, () => {
    console.log('Servidor pronto na porta 8080')
})