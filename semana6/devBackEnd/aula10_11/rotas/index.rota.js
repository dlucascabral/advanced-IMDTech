const express = require('express')
const router = express.Router()
const { Produto, Tag } = require('../models')

router.get('/', async (req, res) => {
    const produtos = await Produto.findAll()
    res.render('pages/produtos', {produtos: produtos, layout: 'layouts/layout.ejs'})
})

module.exports = router