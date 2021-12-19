const express = require('express')
const dotenv = require('dotenv')
const userRoutes = require('./routes/userRoutes')
const connectDB = require("./config/db")
const { errorHandler, notFound } = require('./middelwares/errorMiddelware')
const colors = require('colors')

dotenv.config()

connectDB()

const app = express()

app.use(express.json())

app.use("/api/users", userRoutes)

app.use(errorHandler)
app.use(notFound)

const PORT = process.env.PORT || 5000

app.listen(
    PORT,
    console.log(
      `Server running in ${process.env.NODE_ENV} mode on port ${PORT}..`.yellow.bold)
  )