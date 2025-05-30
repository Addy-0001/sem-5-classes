require('dotenv').config()
const express = require("express")
const connectDB = require("./config/db")
const userRoutes = require("./routes/UserRoute")
const app = express()
const userRouteAdmin = require('./routes/admin/userRouteAdmin')
const categoryRoute = require("./routes/categoryRoute")


app.use(express.json()) // accept json in request
app.use(express.urlencoded({ extended: true }))
app.get("/",
    (req, res) => {
        // logic
        return res.status(200).send("Hell!!o world 2000")
    }
)

connectDB()
app.use("/api/auth", userRoutes)
app.use('/api/admin/user', userRouteAdmin)
app.use('/api/category', categoryRoute)


const port = process.env.PORT

app.listen(
    port,
    () => {
        console.log("Server running")
    }
)