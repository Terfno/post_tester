const express = require('express')
const bodyParser = require('body-parser')

const app = express()

app.use(bodyParser.urlencoded({
	extended: true
}))

app.use(bodyParser.json())

app.post('/',(req,res)=>{
	console.log("posted")
	console.log(req.body)
	res.send("sent\n")
})

app.listen(3000,()=>{
	console.log("running")
})
