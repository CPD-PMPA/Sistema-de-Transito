const cadastrar = (req, res) => {
    res.render('cadastrar')
}

const consultar = (req, res) => {
    res.render('consultar')
}

const relatorios = (req, res) => {
    res.render('relatorios')
}

module.exports = {
    cadastrar,
    consultar,
    relatorios
}