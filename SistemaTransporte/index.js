const express = require('express')
const app = express()
const port = process.env.PORT || 3000
const md5 = require('md5')
const bodyParser = require('body-parser')

//routes
const index = require('./routes/index')
const auth = require('./routes/authenticate')
    //setting post
app.use(bodyParser.urlencoded({ extended: true }))

//setting public paste
app.use(express.static('public'))

//setting ejs
app.set('view engine', 'ejs')



app.use('/', index)
app.use('/authenticate', auth)


app.listen(port, () => console.log('Server running on port ' + port))