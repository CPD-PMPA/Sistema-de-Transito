const express = require('express')
const router = express.Router()
const administradorController = require('../controller/administrador')

router.use((req, res, next) => {
    if ('user' in req.session && req.session.user.papel.includes('Administrador')) {
        next()
    } else {
        res.redirect('/')
    }
})

const useDB = ({ connection }) => {
    // funções cadastrar
    router.get('/cadastrar', administradorController.cadastrar)
    router.get('/cadastrar/acompanhantes', administradorController.acompanhantes)
    router.get('/cadastrar/alunos', administradorController.alunos)
    router.get('/cadastrar/escolas', administradorController.escolas)
    router.get('/cadastrar/motoristas', administradorController.motorista)
    router.get('/cadastrar/responsaveis', administradorController.responsaveis)
    router.get('/cadastrar/veiculos', administradorController.veiculos)
        // fim cadastrar


    router.get('/consultar', administradorController.consultar)
    router.get('/relatorios', administradorController.relatorios)

    return router
}

module.exports = {
    useDB
}