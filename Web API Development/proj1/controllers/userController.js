const User = require('../models/User');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken')


exports.registerUser = async (req, res) => {
    const { username, email, firstName, lastName, password } = req.body;
    if (!username || !email || !firstName || !lastName || !password) {
        return res.status(400).json(
            {
                'success': false,
                "message": 'Missing fields'
            }
        )
    }
    // DB logic in try catch
    try {
        const existingUser = await User.findOne({
            $or: [
                { "username": username },
                {
                    'email': email
                }
            ]
        })

        if (existingUser) {
            return res.status(400).json(
                {
                    'success': false,
                    'message': 'User Already Exists'
                }
            )
        }

        // hash Password
        const hashPass = await bcrypt.hash(
            password, 10
        )

        const newUser = new User(
            {
                username,
                email,
                firstName,
                lastName,
                password: hashPass,
            }
        )

        await newUser.save();
        return res.status(201).json(
            {
                'success': true,
                'message': "User Created"
            }
        )
    } catch (error) {
        return res.status(500).json(
            { 'success': false, "message": "Internal Server Error" }
        )
    }
}

exports.loginUser = async (req, res) => {
    const { email, password } = req.body;

    if (!email || !password) {
        return res.status(400).json(
            { "success": false, "message": "Missing field" }
        )
    }

    try {
        const getUser = await User.findOne({ email: email })
        if (!getUser) {
            return res.status(403).json(
                {
                    'success': false, "message": "User Not Found"
                }
            )
        }
        const passwordCheck = await bcrypt.compare(password, getUser.password)

        if (!passwordCheck) {
            return res.status(403).json(
                {
                    "success": false,
                    "message": "Invalid Credentials"
                }
            )
        }

        const payload = {
            "_id": getUser._id,
            "email": getUser.email,
            'username': getUser.username
        }

        const token = jwt.sign(payload, process.env.secret,
            {
                expiresIn: '7d'
            })

        return res.status(200).json(
            {
                "success": true,
                "message": 'Login Successful',
                'data': getUser,
                'token': token
            }
        )
    } catch (error) {
        return res.status(500).json(
            {
                "success": false,
                'message': 'Server Error'
            }
        )
    }
}