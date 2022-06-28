const express = require('express')
const app = express()
const port = 8080

app.get('/', (req, res) => res.send('nowy2'))

app.listen(port, () => console.log(`The app listening at http://localhost:${port}`))
