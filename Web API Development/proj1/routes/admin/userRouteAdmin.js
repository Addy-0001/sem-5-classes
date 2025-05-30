const express = require('express')
const { createUser, getUsers, getOne, updateOne, deleteOne } = require("../../controllers/admin/userManagement")
const router = express.Router()

// 5 common api routes
router.post(
    '/',
    createUser
)

router.get(
    '/',
    getUsers
)

router.get(
    '/:id',
    getOne
)

router.put(
    '/:id',
    updateOne
)

router.delete(
    '/:id',
    deleteOne
)

module.exports = router;