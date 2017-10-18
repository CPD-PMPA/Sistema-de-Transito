const getAlunos = (connection) => {
    return new Promise((resolve, reject) => {
        connection.query('SELECT * FROM aluno', (err, result) => {
            if (err) {
                reject(err)
            } else {
                resolve(result)
            }
        })
    })
}

module.exports = {
    getAlunos
}