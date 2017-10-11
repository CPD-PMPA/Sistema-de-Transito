const express = require('express')
const router = express.Router()
const administradorController = require('../controller/administrador')

router.use((req, res, next) => {
    if ('user' in req.session) {
        next()
    } else {
        res.redirect('/')
    }
})

router.get('/cadastrar', administradorController.cadastrar)
router.get('/consultar', administradorController.consultar)
router.get('/relatorios', administradorController.relatorios)



module.exports = {
    router
}