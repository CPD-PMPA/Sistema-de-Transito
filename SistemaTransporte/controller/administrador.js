const cadastrar = (req, res) => {
    res.render('Administrador/cadastrar')
}

const consultar = (req, res) => {
    res.render('Administrador/consultar')
}

const relatorios = (req, res) => {
    res.render('Administrador/relatorios')
}

const acompanhantes = (req, res) => {
    res.render('Administrador/cadastrar/acompanhante')
}

const alunos = (req, res) => {
    res.render('Administrador/cadastrar/alunos')
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