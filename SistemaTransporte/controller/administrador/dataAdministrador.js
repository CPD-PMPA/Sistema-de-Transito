const modelAcompanhantes = require('../../model/acompanhantes')

const novoAcompanhantes = async(connection, req, res) => {
    try {
        const result = await modelAcompanhantes.addAcompanhantes(connection, req)
        res.redirect('/adm/cadastrar')
    } catch (error) {
        res.redirect('/')
    }

}

module.exports = {
    novoAcompanhantes
}

const modelResponsavel = require('../../model/responsavel')

const novoResponsavel = async(conection, req, res) => {
    try {
        const result = await modelResponsavel.addResponsavel(conection, req)
        res.redirect('/adm/cadastrar')
    } catch (error) {
        res.redirect('/')
    }
}