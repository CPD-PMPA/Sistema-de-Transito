const addVeiculo = (connection, req) => {
    return new Promise((resolve, reject) => {
        let sql = `INSERT INTO veiculo (placa, frota, modelo, ano, capacidade, renavam, 
            chassi, vencimentoInspecao) VALUES 
            ('${req.body.placa}', '${req.body.frota}', '${req.body.modelo}', '${req.body.ano}', 
            '${req.body.capacidade}', '${req.body.renavam}', '${req.body.chassi}', '${req.body.vencimento_inspecao}')`

        connection.query(sql, (err, result) => {
            if (err) {
                reject(err)
            } else {
                resolve(result)
            }
        })

    })
}


module.exports = {
    addVeiculo
}