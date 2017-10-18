const modelAcompanhantes = require('../../model/acompanhantes')
const modelResponsavel = require('../../model/responsavel')
const modelEscola = require("../../model/escolas/escolas")

const novoAcompanhantes = async(connection, req, res) => {
    try {
        const result = await modelAcompanhantes.addAcompanhantes(connection, req)
        res.redirect('/adm/cadastrar')
    } catch (error) {
        res.redirect('/')
    }

}

const novaEscola = async(connection, req, res) => {
    try {
        await modelEscola.addEscola(connection, req)
        res.redirect('/adm/cadastrar')
    } catch (error) {
        res.redirect('/')
    }
}


const novoResponsavel = async(conection, req, res) => {
    try {
        const result = await modelResponsavel.addResponsavel(conection, req)
        res.redirect('/adm/cadastrar')
    } catch (error) {
        res.redirect('/')
    }
}

module.exports = {
    novoAcompanhantes,
    novaEscola
}