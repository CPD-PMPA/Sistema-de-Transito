const md5 = require('md5')

const addResponsavel = (connection, req) => {
    return new Promise(async(resolve, reject) => {
        const data = req.body
        let sql = `INSERT INTO responsavel (nome, celular01, celular02, cpf, parentesco, endereco)
         VALUES ('${data.nome}','${data.celular01}','${data.celular02}','${data.cpf}','${data.parentesco}','${data.endereco}','${data}')`

        connection.query(sql, (err, result) => {
            if (err) {
                reject(err)
            } else {
                resolve(result)
            }
        })

    })
}


const findResponsavel = async(connection, req, res) => {
    return new Promise(async(resolve, reject) => {
        await connection.query(`SELECT * FROM responsavel`, (err, data) => {
            if (err) {
                reject(err)
            } else {
                resolve(data)
            }
        })
    })
}

module.exports = {
    addResponsavel,
    findResponsavel
}