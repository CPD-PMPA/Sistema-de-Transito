const userModel = require("../model/auth")


const home = async(connection, req, res) => {
    let userDB = []

    if (req.body.papel == '') {
        res.redirect('/login')
        return false
    } else if (req.body.papel == 'Administrador') {
        userDB = await userModel.findOneAdm(connection, req)
    } else if (req.body.papel == 'Motorista') {
        userDB = await userModel.findOneMot(connection, req)
    }


    if (userDB.length == 0) {
        res.locals.error = true
        res.render('login')
        return false

    }

    let user = {
        name: userDB[0].nome,
        papel: userDB[0].papel,
        username: userDB[0].username
    }

    req.session.user = user
    res.locals.user = user

    res.render('home')


}


const homePage = (req, res) => {
    if ('user' in req.session) {
        res.render('home')
    } else {
        res.redirect('/')
    }
}

module.exports = {
    home,
    homePage
}