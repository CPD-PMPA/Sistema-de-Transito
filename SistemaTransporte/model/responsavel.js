const md5 = require('md5')

const addResponsavel = (connection, req) => {
    return new Promise(async(resolve, reject) => {
        const data = req.body
        let sql = `INSERT INTO responsaveis (nome, celular01, celular02, cpf, parentesco, endereco)
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
        await connection.query(`SELECT * FROM responsaveis`, (err, data) => {
            if (err) {
                reject(err)
            } else {
                resolve(data)
            }
        })
    })
}

const ligarResp_Aluno = (connection, req, ultimoID) => {
    return new Promise((resolve, reject) => {
        if (req.body.idResponsavel != null) {
            connection.query(`INSERT INTO responsaveis_aluno (id_aluno, id_responsavel) VALUE ('${ultimoID.lastID}', '${req.body.idResponsavel}')`, (err, result) => {
                if (err) {
                    reject(err)
                } else {
                    resolve(true)
                }
            })
        } else {
            if ('nome' in req.body) {

                let resultados = Array()

                for (let i in req.body.nome) {
                    connection.query(`INSERT INTO responsaveis (nome, celular01, celular02, cpf, parentesco) VALUES
                    ('${req.body.nome[i]}', '${req.body.celular01[i]}', '${req.body.celular02[i]}',
                     '${req.body.cpf[i]}', '${req.body.parentesco[i]}')`, async(err, result) => {
                        if (err) {
                            reject(err)
                        } else {
                            try {
                                resultados.push(await responsaveis_aluno(result.insertId, ultimoID, connection, req.body.parentesco[i]))
                                if (i == req.body.nome.length - 1) {
                                    resolve(resultados)
                                }
                            } catch (err) {
                                reject(err)
                            }

                        }
                    })
                }
            }
        }
    })
}


function responsaveis_aluno(ultimoidRes, ultimoID, connection, parentesco) {
    return new Promise((resolve, reject) => {
        connection.query(`INSERT INTO responsaveis_aluno (id_aluno, id_responsavel, parentesco) VALUES 
                            ('${ultimoID.lastID}', '${ultimoidRes}', '${parentesco}')`, (err, result) => {
            if (err) {
                reject(err)
            } else {
                resolve(result)
            }
        })
    })
}

module.exports = {
    addResponsavel,
    findResponsavel,
    ligarResp_Aluno
}