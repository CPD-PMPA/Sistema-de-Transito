const express = require('express')
const router = express.Router()
const administradorController = require('../controller/administrador/administrador')


//function add, edit, delete
const addController = require('../controller/administrador/dataAdministrador')


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
    router.get('/cadastrar/acompanhantes', administradorController.acompanhantes.bind(null, connection))
    router.post('/cadastrar/acompanhantes', addController.novoAcompanhantes.bind(null, connection))
    router.get('/cadastrar/alunos', administradorController.alunos.bind(null, connection))
    router.post('/cadastrar/alunos', (req, res) => {
        res.send(req.body)
    })
    router.get('/cadastrar/escolas', administradorController.escolas)
    router.post('/cadastrar/escolas', addController.novaEscola.bind(null, connection))

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