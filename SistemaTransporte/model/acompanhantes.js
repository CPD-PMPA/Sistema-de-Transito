const md5 = require('md5')

const addAcompanhantes = (connection, req) => {
    return new Promise(async(resolve, reject) => {
        const data = req.body
        let sql = `INSERT INTO acompanhante (nome, celular, parentesco, rua, numero, bairro)
         VALUES ('${data.nome}','${data.celular}','${data.parentesco}','${data.rua}','${data.numero}','${data.bairro}')`

        connection.query(sql, (err, result) => {
            if (err) {
                reject(err)
            } else {
                resolve(result)
            }
        })

    })
}


const findAcompanhantes = async(connection, req, res) => {
    return new Promise(async(resolve, reject) => {
        await connection.query(`SELECT * FROM acompanhante`, (err, data) => {
            if (err) {
                reject(err)
            } else {
                resolve(data)
            }
        })
    })
}

module.exports = {
    addAcompanhantes,
    findAcompanhantes
}