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
                for (let i in req.body.nome) {
                    connection.query(`INSERT INTO responsaveis (nome, celular01, celular02, cpf, parentesco) VALUES
                    ('${req.body.nome[i]}', '${req.body.celular01[i]}', '${req.body.celular02[i]}',
                     '${req.body.cpf[i]}', '${req.body.parentesco[i]}')`, (err, result) => {
                        if (err) {
                            reject(err)
                        } else {
                            let ultimoidRes = result.insertId;

                            connection.query(`INSERT INTO responsaveis_aluno (id_aluno, id_responsavel) VALUES 
                            ('${ultimoID.lastID}', '${ultimoidRes}')`, (err, result) => {
                                if (err) {
                                    reject(err)
                                } else {
                                    resolve(true)
                                }
                            })

                        }
                    })
                }
            }
        }
    })
}

module.exports = {
    addResponsavel,
    findResponsavel,
    ligarResp_Aluno
}