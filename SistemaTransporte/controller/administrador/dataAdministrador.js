const modelRotas = require('../../model/rotas')
const modelResponsavel = require('../../model/responsavel')
const modelEscola = require("../../model/escolas/escolas")
const modelVeiculo = require("../../model/veiculo/veiculo")
const modelMotorista = require("../../model/motorista/motorista")

const novaRota = async(connection, req, res) => {
    try {
        const result = await modelRotas.addRota(connection, req)
        res.redirect('/adm/cadastrar')
    } catch (error) {
        res.redirect('/')
    }

}

const novaEscola = async(connection, req, res) => {
    try {
        await modelEscola.addEscola(connection, req)
        res.redirect('/adm/cadastrar?true') //confirmação de cadastro efetuado com sucesso

    } catch (error) {
        res.redirect('/')
    }
}

const novoResponsavel = async(conection, req, res) => {
    try {
        const result = await modelResponsavel.addResponsavel(conection, req)
        res.redirect('/adm/cadastrar?true')
    } catch (error) {
        res.redirect('/')
    }
}

const novoVeiculo = async(connection, req, res) => {
    try {
        await modelVeiculo.addVeiculo(connection, req)
        res.redirect('/adm/cadastrar?true')
    } catch (error) {
        res.redirect('/')
    }
}

const novoMotorista = async(connection, req, res) => {
    try {
        await modelMotorista.addMotorista(connection, req)
        res.redirect('/adm/cadastrar?true')
    } catch (error) {
        console.log(error)
        res.redirect('/logout')
    }
}

module.exports = {
    novaRota,
    novaEscola,
    novoVeiculo,
    novoMotorista
}