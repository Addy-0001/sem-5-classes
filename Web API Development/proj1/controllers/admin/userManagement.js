const User = require("../../models/User")

exports.createUser = async (req, res) => {
    try {
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

    } catch (error) {
        return res.status(500).json({
            "success": false,
            "message": "Internal Server Error"
        })
    }
}


exports.getUsers = async (req, res) => {
    try {
        const users = await User.find()
        return res.status(200).json({
            'success': true,
            'message': "All Users",
            'data': users
        })
    } catch (err) {
        return res.status(500).json(
            {
                "success": false,
                "message": "Server Error"
            }
        )
    }
}

exports.getOne = async (req, res) => {
    try {
        const id = req.params.id;
        const user = await User.findOne(
            {
                "_id": id
            }
        )

        return res.status(200).json({
            "success": true,
            "message": "One User Fetched",
            "data": user,
        })
    } catch (error) {
        return res.status(500).json(
            {
                "success": false,
                "message": "Server Error"
            }
        )

    }
}

// Update One
exports.updateOne = async (req, res) => {
    try {
        const { firstName, lastName } = req.body
        const _id = req.params.id;
        const user = await User.updateOne(
            {
                "_id": _id
            },
            {
                $set: {
                    'firstName': firstName,
                    'lastName': lastName
                }
            }
        )

        return res.status(200).json(
            {
                'success': true,
                'message': 'User Updated'
            }
        )


    } catch (error) {
        return res.status(500).json(
            {
                "success": false,
                "message": "Server Error"
            }
        )
    }

}


exports.deleteOne = async (req, res) => {
    const _id = req.params.id;
    try {
        const user = await User.deleteOne(
            {
                "_id": _id
            }
        )

        return res.status(200).json(
            {
                "success": true,
                "message": "User Deleted"
            }
        )
    } catch (error) {
        return res.status(500).json(
            {
                "success": false,
                "message": "server error"
            }
        )


    }
}