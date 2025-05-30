const Category = require("../models/Category")

exports.createCategory = async (req, res) => {
    const name = req.body;

    if (!name) {
        return res.status(400).json(
            {
                "success": false,
                "message": "Name is Required"
            }
        )
    }

    const newCategory = new Category(
        {
            name: name
        }
    )

    newCategory.save();

    return res.status(201).json(
        {
            'success': true,
            'message': 'Category Created',
            "data": newCategory
        }
    )
}

exports.listCategory = async (req, res) => {
    try {
        const categories = await Category.find()
        return res.status(200).json(
            {
                "success": true,
                "message": "All Categories",
                "data": categories
            }
        )

    } catch (error) {
        console.log(error)
        return res.status(500).json(
            {
                'success': false,
                'message': "Internal Server Error"
            }
        )

    }
}

exports.findOneCategory = async (req, res) => {
    try {
        const id = req.params.id;
        const category = await Category.findById(id);
        return res.status(200).json(
            {
                'success': true,
                'message': "Category Found",
                'data': category
            }
        )
    } catch (error) {
        return res.status(500).json(
            {
                'success': false,
                'message': "Internal Server Error"
            }
        )
    }
}


// Update a category
exports.updateCategory = async (req, res) => {
    try {
        const category = await Category.findByIdAndUpdate(
            req.params.id,
            { name: req.body.name },
            { new: true }
        );
        if (!category) return res.status(404).json({ success: false, message: 'Category not found' });
        return res.json(
            {
                success: true,
                data: category,
                message: "Updated"
            }
        );
    } catch (err) {
        return res.status(500).json({ error: "Server Error" });
    }
};

// Delete a category
exports.deleteCategory = async (req, res) => {
    try {
        const result = await Category.findByIdAndDelete(req.params.id);
        if (!result) return res.status(404).json({ success: false, message: 'Category not found' });
        return res.json({ success: true, message: 'Category deleted' });
    } catch (err) {
        return res.status(500).json({ success: false, message: "Server Error" });
    }
};