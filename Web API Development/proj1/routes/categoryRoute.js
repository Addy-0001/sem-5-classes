const express = require('express');
const router = express.Router();
const categoryController = require('../controllers/categoryController');

// implement using dot function
router.post('/', categoryController.createCategory);
router.get('/', categoryController.listCategory);
router.get('/:id', categoryController.findOneCategory);
router.patch('/:id', categoryController.updateCategory);
router.delete('/:id', categoryController.deleteCategory);

module.exports = router;