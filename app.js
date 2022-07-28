const express = require('express')
const app = express()
const port = 8080

app.get('/', (req, res) => {
  res.send('This is express application')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
