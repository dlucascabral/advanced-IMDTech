const express = require('express')
const jwt = require('jsonwebtoken')
require('dotenv').config()
const app = express()

app.get('/token', (req, res) => {

    const payload = {number: Math.random()}

    const token = jwt.sign(payload, process.env.ACCESS_TOKEN_SECRET, {expiresIn: '3600s'})

    res.json({accessToken: token})
})

app.get('/validar', (req, res) => {    
    try {
        const auth = {'Authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJudW1iZXIiOjAuNzgxMzc1ODAwNTE0Mzg2OSwiaWF0IjoxNjI2Nzg5OTgyLCJleHAiOjE2MjY3OTM1ODJ9.UaDYETgFOWjeXg9Oed3wmy_D83Fw1vvx4Y8Cayuq31o"}
        const token = auth['Authorization'] && auth['Authorization'].split(' ')[1]
        const verificado = jwt.verify(token, process.env.ACCESS_TOKEN_SECRET)
        res.status(200).json({payload: verificado})
    } catch (err) {
        res.status(400).json({msg: "Não autorizado"})
    }
    
})

app.listen(8080, () => {
    console.log('Servidor pronto na porta 8080')
})