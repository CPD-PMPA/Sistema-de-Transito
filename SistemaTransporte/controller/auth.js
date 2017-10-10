const jwt = require('jsonwebtoken')
const userModel = require("../model/auth")
const secret = 'Sistema de transporte'

const home = async(connection, req, res) => {
    let user = []

    if (req.body.papel == '') {
        res.redirect('/login')
        return false
    } else if (req.body.papel == 'Administrador') {
        user = await userModel.findOneAdm(connection, req)
    } else if (req.body.mot == 'Motorista') {
        user = await userModel.findOneAdm(connection, req)
    }


    if (user.length == 0) {
        res.locals.error = true
        res.render('login')
        return false

    }

    const payload = {
        username: user[0].username,
        papel: user[0].papel,
    }

    jwt.sign(payload, secret, (err, token) => {
        res.header('x-access-token', token)
        res.render('home', { payload })
    })

}

module.exports = {
    home
}