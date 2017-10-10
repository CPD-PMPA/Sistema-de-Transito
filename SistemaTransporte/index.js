const express = require('express')
const app = express()
const port = process.env.PORT || 3000
const mysql = require('mysql')

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

//routes
const index = require('./routes/index')
const useDB = require('./routes/authenticate')
    //setting post
app.use(bodyParser.urlencoded({ extended: true }))

//setting public paste
app.use(express.static('public'))

//setting ejs
app.set('view engine', 'ejs')



app.use('/', index)
app.use('/authenticate', useDB(preference))


connection.connect(err => {
    if (err) {
        console.log('Error to connect to database ' + err)
        return false
    }
    app.listen(port, () => console.log('Server running on port ' + port))
})