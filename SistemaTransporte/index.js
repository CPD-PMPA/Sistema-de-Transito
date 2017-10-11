const express = require('express')
const app = express()
const port = process.env.PORT || 3000
const mysql = require('mysql')
const session = require('express-session')

const connection = mysql.createConnection({
    host: 'localhost',
    user: "root",
    password: "",
    database: 'SistemaTransporte'
})

const preference = {
    connection
}

const bodyParser = require('body-parser')


app.use(session({
    secret: 'Sistema de transporte',
    resave: false,
    saveUninitialized: false,
}))

//routes
const index = require('./routes/index')
const useDB = require('./routes/authenticate')
const logout = require('./routes/logout')
const adm = require('./routes/administrador')
    //setting post
app.use(bodyParser.urlencoded({ extended: true }))

//setting public paste
app.use(express.static('public'))

//setting ejs
app.set('view engine', 'ejs')

app.use((req, res, next) => {

    if ('user' in req.session) {
        res.locals.user = req.session.user
    }
    next()
})

app.use('/', index)
app.use('/home', useDB(preference))
app.use('/logout', logout)
app.use('/adm', adm.router)


connection.connect(err => {
    if (err) {
        console.log('Error to connect to database ' + err)
        return false
    }
    app.listen(port, () => console.log('Server running on port ' + port))
})