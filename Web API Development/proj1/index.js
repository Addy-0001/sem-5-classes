const express = require('express');
const app = express();

app.get(
    // get request
    '/api/v1/user/',
    (req, res, next) => {
        // req -> request, res-> response, next -> next function
        // req = the data coming from the client
        // response = the data being sent to the client
        // next = what do we do after logging in? 

        return res.status(200).send("Hello World 2")
    }
)

app.get(
    "/post/:postid",
    (req, res) => {
        let postId = req.params.postid
        console.log(postId)
        let query_name = req.query.name
        let query_age = req.query.age

        return res.status(200).send(`Success ${query_name}, ${query_age}`)
    }
)

// Make a get requests called /users
// that takes dynamic id as params
// if id is not present in users, send bad response with the "Failure" 400. 
// Send success response with "success"
// send 500 response with server error. 

const users = [
    { id: 1, name: 'adamya', email: "adamya@gmail.com" },
    { id: 2, name: 'subas', email: "subas@gmail.com" },
    { id: 3, name: 'arya', email: "arya@gmail.com" },
]

app.get(
    "/user/:userId",
    (req, res) => {
        let userId = req.params.userId
        users.forEach(element => {
            if (element.id == userId) {
                return res.status(200).send(`User Found ${element.name}`)
            }
        }
        );
        return res.status(500).send('User Id not found')
    }
)

app.listen(
    5050, //port -> localhost:5050 
    () => {
        console.log("server started")
    }
)