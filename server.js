const express = require ('express')
const app = express()
const PORT = 8080
const HOST = '0.0.0.0'

app.get('/', (req, res) => {
    res.send('hello world!')
})

app.listen(PORT , () => {
    console.log('docker web app listening at http://${HOST}:${PORT}')
})