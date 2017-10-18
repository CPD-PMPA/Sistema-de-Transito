const modelAcompanhantes = require('../../model/acompanhantes')
const modelAlunos = require('../../model/alunos/alunos')

const cadastrar = (req, res) => {
    res.render('Administrador/cadastrar')
}

const consultar = (req, res) => {
    res.render('Administrador/consultar')
}

const relatorios = (req, res) => {
    res.render('Administrador/relatorios')
}

const acompanhantes = async(connection, req, res) => {
    try {
        const alunos = await modelAlunos.getAlunos(connection)
        res.render('Administrador/cadastrar/acompanhante', { alunos })
    } catch (error) {
        res.redirect("/")
    }
}


const alunos = async(connection, req, res) => {
    try {
        const result = await modelAcompanhantes.findAcompanhantes(connection)
        res.render('Administrador/cadastrar/alunos', { result })
    } catch (err) {
        res.redirect('/')
    }


}

const escolas = (req, res) => {
    res.render('Administrador/cadastrar/escolas')
}

const motorista = (req, res) => {
    res.render('Administrador/cadastrar/motorista')
}

const responsaveis = (req, res) => {
    res.render('Administrador/cadastrar/responsaveis')
}

const veiculos = (req, res) => {
    res.render('Administrador/cadastrar/veiculos')
}

module.exports = {
    cadastrar,
    consultar,
    relatorios,
    acompanhantes,
    alunos,
    escolas,
    motorista,
    responsaveis,
    veiculos
}