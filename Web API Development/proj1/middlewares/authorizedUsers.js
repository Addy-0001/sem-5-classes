const jwt = require('jsonwebtoken')
const User = require('../models/User')

exports.authenticateUser = async (req, res, next) => {
    try {
        const authHeader = req.headers.authorization;
        if (!authHeader) {
            return res.status(403).json(
                {
                    "success": false,
                    "message": "Token Required"
                }
            )
        }

        const token = authHeader.split(("")[1]);
        const decoded = jwt.verify(token, process.env.secret)
        const userId = decoded._id
        const user = await User.fetchOne({ _id: userId })

        if (!user) {
            return res.status(401).json(
                {
                    'sucess': false,
                    'message': "User Not Found"
                }
            )
        }

        req.user = user
        next()
    } catch (error) {
        return res.status(500).json(
            {
                "success": false,
                'message': 'Server Error'
            }
        )
    }
}