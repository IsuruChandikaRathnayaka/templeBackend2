const galleryService = require("../services/galleryServices");
const path = require("path");

// Controller to get all categories with image URLs
const getAllCategories = async (req, res) => {
    try {
      // Fetch all categories from the gallery service
      const all_categories = await galleryService.getAllCategories();
      
      // Define a fallback image URL in case `category.Logo` is missing
      const fallbackImageUrl = `${req.protocol}://${req.get("host")}/uploads/default_logo.jpg`;
      
      // Map over the categories to generate URLs for the images
      const categoriesWithImages = all_categories.map(category => {
        // Check if category.Logo exists and is not empty
        const logoUrl = category.Logo && category.Logo.trim() !== '' 
          ? `${req.protocol}://${req.get("host")}/uploads/${category.Logo}` 
          : fallbackImageUrl;
        
        return {
          ...category,
          Logo: logoUrl, // Add the full URL to the image or fallback
        };
      });
  
      console.log("Categories with images:", categoriesWithImages);
      
      // Send the response with categories and image URLs
      return res.status(200).json(categoriesWithImages);
    } catch (err) {
      console.error("Error fetching images:", err);
      return res.status(500).json({ message: "Error fetching details!", error: err });
    }
  };
  

// Controller to add a picture
const addPicture = async (req, res) => {
  try {
    const { category_id } = req.params;
    const picture = req.file ? req.file.filename : null;

    const adder = await galleryService.addPicture(category_id, picture);
    return res.status(200).json({ message: "Picture added successfully!", data: adder });
  } catch (err) {
    console.error("Error adding picture:", err);
    return res.status(500).json({ message: "Error adding the picture", error: err });
  }
};

// Controller to delete an image
const deleteImage = async (req, res) => {
  try {
    const { id } = req.params;
    await galleryService.deleteImage(id);
    return res.status(200).json({ message: "Image deletion completed!" });
  } catch (err) {
    console.error("Error deleting image:", err);
    return res.status(500).json({ message: "Error deleting the image", error: err });
  }
};

module.exports = {
  getAllCategories,
  addPicture,
  deleteImage
};
